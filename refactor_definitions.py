#!/usr/bin/env python3
"""批量重构 definition 模块文件"""
import os
import re
from pathlib import Path

def process_file(file_path):
    """处理单个文件"""
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # 查找格式字符串声明
    format_pattern = r"const String (\w+)Format = '([^']+)';\n\n"
    format_match = re.search(format_pattern, content)

    if not format_match:
        print(f"跳过 {file_path} - 未找到格式字符串")
        return False

    var_name = format_match.group(1)
    format_string = format_match.group(2)

    # 删除格式字符串声明
    content = re.sub(format_pattern, '', content)

    # 修改结构定义
    # 从: const DbcStructureDefinition chrRaces = DbcStructureDefinition(
    #      name: 'ChrRaces',
    #      format: chrRacesFormat,
    # 到: const chrRaces = DbcStructureDefinition(
    #      name: 'ChrRaces',
    #      format: 'xxx',

    # 查找结构定义
    struct_pattern = rf"const DbcStructureDefinition {var_name} = DbcStructureDefinition\(\n  name: '([^']+)',\n  format: {var_name}Format,"
    struct_match = re.search(struct_pattern, content)

    if not struct_match:
        print(f"警告 {file_path} - 未找到结构定义")
        return False

    struct_name = struct_match.group(1)

    # 替换结构定义
    new_struct = f"const {var_name} = DbcStructureDefinition(\n  name: '{struct_name}',\n  format: '{format_string}',"
    content = re.sub(struct_pattern, new_struct, content)

    # 写回文件
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)

    print(f"✓ 处理完成: {file_path}")
    return True

def main():
    # 项目根目录
    root = Path(r'D:\Code\warcrafty\lib\src\definition')

    # 需要处理的模块目录
    modules = [
        'creature', 'faction', 'gameobject', 'item', 'map',
        'quest', 'skill', 'spell', 'gt', 'other', 'vehicle'
    ]

    processed = 0
    skipped = 0

    for module in modules:
        module_dir = root / module
        if not module_dir.exists():
            print(f"跳过 {module} - 目录不存在")
            continue

        # 处理模块中的所有 .dart 文件（除了 index.dart）
        for dart_file in module_dir.glob('*.dart'):
            if dart_file.name == 'index.dart':
                continue

            if process_file(dart_file):
                processed += 1
            else:
                skipped += 1

    print(f"\n总计: 处理 {processed} 个文件, 跳过 {skipped} 个文件")

    # 删除所有 index.dart 文件
    print("\n删除 index.dart 文件...")
    for module in modules:
        index_file = root / module / 'index.dart'
        if index_file.exists():
            index_file.unlink()
            print(f"✓ 删除: {index_file}")

if __name__ == '__main__':
    main()
