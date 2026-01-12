#!/usr/bin/env python3
"""
WoWDBDefs .dbd 文件解析器和 Dart 定义生成器

从 WoWDBDefs 项目解析 .dbd 文件，生成 Warcrafty 项目的 Dart 定义文件。
目标版本: 3.3.5.12340 (巫妖王之怒最后补丁)
"""

import os
import re
import sys
from pathlib import Path
from dataclasses import dataclass, field
from typing import Optional

# 配置
TARGET_VERSION = "3.3.5.12340"
WOWDBDEFS_PATH = Path(r"D:\Code\WoWDBDefs\definitions")
OUTPUT_PATH = Path(r"D:\Code\warcrafty\lib\src\definition")

# 分类规则 (前缀 -> 目录)
CATEGORY_RULES = {
    # 成就
    'Achievement': 'achievement',
    # 区域
    'Area': 'area',
    'World': 'area',
    'WMO': 'area',
    # 角色
    'Chr': 'character',
    'Char': 'character',
    'Chat': 'character',
    # 生物
    'Creature': 'creature',
    # 派系
    'Faction': 'faction',
    # 游戏对象
    'GameObject': 'gameobject',
    'GameObjects': 'gameobject',
    # GT 表
    'Gt': 'gt',
    # 物品
    'Item': 'item',
    'Gem': 'item',
    # 光照
    'Light': 'light',
    # 地图
    'Map': 'map',
    'Dungeon': 'map',
    'LFG': 'map',
    # 任务
    'Quest': 'quest',
    # 技能
    'Skill': 'skill',
    # 音效
    'Sound': 'sound',
    'Music': 'sound',
    'Ambient': 'sound',
    # 法术
    'Spell': 'spell',
    'Glyph': 'spell',
    'Totem': 'spell',
    # 天赋
    'Talent': 'talent',
    # 飞行点
    'Taxi': 'taxi',
    # 载具
    'Vehicle': 'vehicle',
}


@dataclass
class ColumnDef:
    """COLUMNS 部分的字段定义"""
    type: str  # int, float, string, locstring
    name: str
    foreign_ref: Optional[str] = None  # 外键引用 如 Map::ID
    is_uncertain: bool = False  # 带 ? 后缀


@dataclass
class FieldDef:
    """VERSION 部分的字段定义"""
    name: str
    size: Optional[str] = None  # 8, 16, 32, u8, u16, u32
    array_size: Optional[int] = None  # 数组长度
    is_id: bool = False  # $id$ 标记
    is_relation: bool = False  # $relation$ 标记
    is_noninline: bool = False  # $noninline$ 标记


@dataclass
class DbdFile:
    """解析后的 .dbd 文件"""
    name: str  # 文件名（不含扩展名）
    columns: dict[str, ColumnDef] = field(default_factory=dict)  # name -> ColumnDef
    target_fields: list[FieldDef] = field(default_factory=list)  # 目标版本的字段列表
    has_target_version: bool = False


def parse_version_range(version_str: str) -> tuple[str, str]:
    """解析版本范围字符串，返回 (起始版本, 结束版本)"""
    if '-' in version_str:
        parts = version_str.split('-')
        return parts[0].strip(), parts[1].strip()
    return version_str.strip(), version_str.strip()


def version_in_range(target: str, start: str, end: str) -> bool:
    """检查目标版本是否在范围内"""
    def parse_ver(v: str) -> tuple[int, ...]:
        return tuple(int(x) for x in v.split('.'))

    t = parse_ver(target)
    s = parse_ver(start)
    e = parse_ver(end)
    return s <= t <= e


def check_version_match(build_line: str, target_version: str) -> bool:
    """检查 BUILD 行是否包含目标版本"""
    # 移除 "BUILD " 前缀
    versions_str = build_line.replace("BUILD ", "").strip()

    # 分割多个版本（逗号分隔）
    for version_part in versions_str.split(','):
        version_part = version_part.strip()
        if not version_part:
            continue

        # 检查是否是范围
        start, end = parse_version_range(version_part)

        if version_in_range(target_version, start, end):
            return True

    return False


def parse_column_line(line: str) -> Optional[ColumnDef]:
    """解析 COLUMNS 部分的一行"""
    # 格式: type<ForeignRef> name? 或 type name?
    pattern = r'^(int|float|string|locstring)(?:<([^>]+)>)?\s+(\w+)(\?)?$'
    match = re.match(pattern, line.strip())
    if match:
        return ColumnDef(
            type=match.group(1),
            name=match.group(3),
            foreign_ref=match.group(2),
            is_uncertain=match.group(4) is not None
        )
    return None


def parse_field_line(line: str) -> Optional[FieldDef]:
    """解析 VERSION 部分的字段行"""
    line = line.strip()
    if not line or line.startswith('LAYOUT') or line.startswith('BUILD') or line.startswith('COMMENT'):
        return None

    # 解析注解和字段名
    # 格式: $annotation$FieldName<size>[array]
    pattern = r'^(\$[\w,]+\$)?(\w+)(?:<(\w+)>)?(?:\[(\d+)\])?$'
    match = re.match(pattern, line)
    if not match:
        return None

    annotation = match.group(1) or ''
    name = match.group(2)
    size = match.group(3)
    array_size = int(match.group(4)) if match.group(4) else None

    return FieldDef(
        name=name,
        size=size,
        array_size=array_size,
        is_id='id' in annotation.lower(),
        is_relation='relation' in annotation.lower(),
        is_noninline='noninline' in annotation.lower()
    )


def parse_dbd_file(file_path: Path) -> DbdFile:
    """解析 .dbd 文件"""
    dbd = DbdFile(name=file_path.stem)

    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    lines = content.split('\n')

    # 状态机
    in_columns = False
    in_target_version = False
    found_target = False

    i = 0
    while i < len(lines):
        line = lines[i].strip()

        # 检测 COLUMNS 部分
        if line == 'COLUMNS':
            in_columns = True
            i += 1
            continue

        # COLUMNS 部分结束（遇到空行或 BUILD/LAYOUT）
        if in_columns:
            if not line or line.startswith('BUILD') or line.startswith('LAYOUT'):
                in_columns = False
            else:
                col = parse_column_line(line)
                if col:
                    dbd.columns[col.name] = col
                i += 1
                continue

        # 检测目标版本
        if line.startswith('BUILD ') and not found_target:
            if check_version_match(line, TARGET_VERSION):
                in_target_version = True
                found_target = True
                dbd.has_target_version = True
                i += 1
                continue

        # 在目标版本内读取字段
        if in_target_version:
            # 遇到新的 LAYOUT 或 BUILD 表示当前版本结束
            if line.startswith('LAYOUT') or (line.startswith('BUILD') and not check_version_match(line, TARGET_VERSION)):
                in_target_version = False
            elif line.startswith('BUILD') and check_version_match(line, TARGET_VERSION):
                # 继续在同一版本内
                pass
            elif line and not line.startswith('COMMENT'):
                field_def = parse_field_line(line)
                if field_def:
                    dbd.target_fields.append(field_def)

        i += 1

    return dbd


def get_field_type(dbd: DbdFile, field: FieldDef) -> tuple[str, str]:
    """
    获取字段的 Dart 类型和格式字符
    返回: (DbcFieldFormat 值, 格式字符)
    """
    col = dbd.columns.get(field.name)

    # 处理 $id$ 标记
    if field.is_id:
        return ('DbcFieldFormat.index', 'n')

    # 根据 COLUMNS 类型判断
    if col:
        if col.type == 'locstring':
            # locstring 需要特殊处理，返回标记
            return ('LOCSTRING', 'LOCSTRING')
        elif col.type == 'float':
            return ('DbcFieldFormat.float', 'f')
        elif col.type == 'string':
            return ('DbcFieldFormat.string', 's')
        elif col.type == 'int':
            return ('DbcFieldFormat.intType', 'i')

    # 默认为整数
    return ('DbcFieldFormat.intType', 'i')


def to_snake_case(name: str) -> str:
    """将 PascalCase/camelCase 转换为 snake_case"""
    # 在大写字母前插入下划线
    result = re.sub(r'([A-Z])', r'_\1', name)
    # 移除开头的下划线，转换为小写
    return result.lstrip('_').lower()


def to_camel_case(name: str) -> str:
    """将 snake_case 或 PascalCase 转换为 camelCase"""
    # 先转换为 snake_case
    snake = to_snake_case(name)
    # 然后转换为 camelCase
    parts = snake.split('_')
    return parts[0] + ''.join(word.capitalize() for word in parts[1:])


def categorize_dbc(name: str) -> str:
    """确定 DBC 文件的分类目录"""
    for prefix, category in CATEGORY_RULES.items():
        if name.startswith(prefix):
            return category
    return 'misc'


def generate_dart_definition(dbd: DbdFile) -> str:
    """生成 Dart 定义文件内容"""
    lines = []

    # 导入语句
    lines.append("import 'package:warcrafty/src/definition/base/field_definition.dart';")
    lines.append("import 'package:warcrafty/src/definition/base/structure_definition.dart';")
    lines.append("import 'package:warcrafty/src/core/field_format.dart';")

    # 检查是否需要 locale_fields
    has_locstring = any(
        dbd.columns.get(f.name) and dbd.columns.get(f.name).type == 'locstring'
        for f in dbd.target_fields
    )
    if has_locstring:
        lines.append("import 'package:warcrafty/src/definition/common/locale_fields.dart';")

    lines.append("")
    lines.append(f"/// {dbd.name} 结构定义")
    lines.append("///")
    lines.append(f"/// 基于 WoWDBDefs 定义，版本 {TARGET_VERSION}")

    # 生成格式字符串
    format_chars = []
    for f in dbd.target_fields:
        field_type, char = get_field_type(dbd, f)
        count = f.array_size or 1

        if char == 'LOCSTRING':
            # locstring = 16 个字符串 + 1 个标志
            format_chars.extend(['s'] * 17)
        else:
            format_chars.extend([char] * count)

    format_string = ''.join(format_chars)

    # 使用 final 还是 const
    use_final = has_locstring
    const_or_final = 'final' if use_final else 'const'

    # 生成变量名
    var_name = to_camel_case(dbd.name)

    lines.append(f"{const_or_final} {var_name} = DbcStructureDefinition(")
    lines.append(f"  name: '{dbd.name}',")
    lines.append(f"  format: '{format_string}',")
    lines.append("  fields: [")

    # 生成字段定义
    field_index = 0
    for f in dbd.target_fields:
        field_type, char = get_field_type(dbd, f)
        count = f.array_size or 1
        col = dbd.columns.get(f.name)

        if char == 'LOCSTRING':
            # 使用 createLocaleFieldsWithFlag 辅助函数
            lines.append(f"    ...createLocaleFieldsWithFlag({field_index}, '{f.name}', '{f.name}'),")
            field_index += 17
        elif count > 1:
            # 数组字段
            for i in range(count):
                lines.append(f"    const FieldDefinition(index: {field_index}, name: '{f.name}{i}', description: '{f.name} {i}', format: {field_type}),")
                field_index += 1
        else:
            # 普通字段
            desc = f.name
            lines.append(f"    const FieldDefinition(index: {field_index}, name: '{f.name}', description: '{desc}', format: {field_type}),")
            field_index += 1

    lines.append("  ],")
    lines.append(");")
    lines.append("")

    return '\n'.join(lines)


def process_all_dbd_files():
    """处理所有 .dbd 文件"""
    if not WOWDBDEFS_PATH.exists():
        print(f"Error: WoWDBDefs path not found: {WOWDBDEFS_PATH}")
        sys.exit(1)

    dbd_files = list(WOWDBDEFS_PATH.glob('*.dbd'))
    print(f"Found {len(dbd_files)} .dbd files")

    results = {
        'success': [],
        'no_target_version': [],
        'error': []
    }

    # 统计每个分类的文件数
    category_counts = {}

    for dbd_path in sorted(dbd_files):
        try:
            dbd = parse_dbd_file(dbd_path)

            if not dbd.has_target_version:
                results['no_target_version'].append(dbd.name)
                continue

            if not dbd.target_fields:
                results['no_target_version'].append(dbd.name)
                continue

            # 生成 Dart 代码
            dart_code = generate_dart_definition(dbd)

            # 确定输出目录
            category = categorize_dbc(dbd.name)
            output_dir = OUTPUT_PATH / category
            output_dir.mkdir(parents=True, exist_ok=True)

            # 写入文件
            output_file = output_dir / f"{to_snake_case(dbd.name)}.dart"
            with open(output_file, 'w', encoding='utf-8') as f:
                f.write(dart_code)

            results['success'].append(dbd.name)
            category_counts[category] = category_counts.get(category, 0) + 1

        except Exception as e:
            results['error'].append((dbd_path.name, str(e)))

    # 打印结果
    print(f"\n=== 生成结果 ===")
    print(f"成功: {len(results['success'])}")
    print(f"无 {TARGET_VERSION} 版本定义: {len(results['no_target_version'])}")
    print(f"错误: {len(results['error'])}")

    print(f"\n=== 分类统计 ===")
    for cat, count in sorted(category_counts.items()):
        print(f"  {cat}: {count}")

    if results['error']:
        print(f"\n=== 错误详情 ===")
        for name, error in results['error']:
            print(f"  {name}: {error}")

    return results


def generate_exports_file(results: dict):
    """生成 definition.dart 导出文件的模板"""

    success_names = sorted(results['success'])

    lines = []
    lines.append("// 自动生成的导出文件")
    lines.append("// 基于 WoWDBDefs 生成，版本 " + TARGET_VERSION)
    lines.append("")

    # 按分类分组
    by_category = {}
    for name in success_names:
        cat = categorize_dbc(name)
        if cat not in by_category:
            by_category[cat] = []
        by_category[cat].append(name)

    # 生成导入语句
    for cat in sorted(by_category.keys()):
        lines.append(f"// {cat}")
        for name in sorted(by_category[cat]):
            snake = to_snake_case(name)
            lines.append(f"import '{cat}/{snake}.dart' as struct_{snake};")
        lines.append("")

    # 生成 Definitions 类
    lines.append("class Definitions {")
    lines.append("  Definitions._();")
    lines.append("")

    for name in success_names:
        snake = to_snake_case(name)
        camel = to_camel_case(name)
        lines.append(f"  static final {camel} = struct_{snake}.{camel};")

    lines.append("}")

    # 写入模板文件
    template_path = OUTPUT_PATH / "definition_template.dart"
    with open(template_path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))

    print(f"\n导出模板已生成: {template_path}")


if __name__ == '__main__':
    print(f"WoWDBDefs .dbd 解析器")
    print(f"目标版本: {TARGET_VERSION}")
    print(f"输入路径: {WOWDBDEFS_PATH}")
    print(f"输出路径: {OUTPUT_PATH}")
    print("")

    results = process_all_dbd_files()
    generate_exports_file(results)
