#!/bin/bash

# 处理所有 src 目录下的 dart 文件（排除已处理的 definition 子模块文件）
find "lib/src" -name "*.dart" \
  ! -path "*/definition/achievement/*" \
  ! -path "*/definition/character/*" \
  ! -path "*/definition/creature/*" \
  ! -path "*/definition/faction/*" \
  ! -path "*/definition/gameobject/*" \
  ! -path "*/definition/gt/*" \
  ! -path "*/definition/item/*" \
  ! -path "*/definition/map/*" \
  ! -path "*/definition/quest/*" \
  ! -path "*/definition/skill/*" \
  ! -path "*/definition/spell/*" \
  ! -path "*/definition/vehicle/*" \
  ! -path "*/definition/other/*" \
  -type f | while read file; do
    
    echo "处理: $file"
    
    # 创建临时文件
    tmp_file="${file}.tmp"
    
    # 步骤1: 删除顶部注释和 library; 行
    awk '
    BEGIN { 
        in_header = 1
        found_code = 0
    }
    
    # 跳过所有以 /// 开头的文档注释
    /^\/\/\// && in_header { next }
    
    # 跳过空行（在找到实际代码之前）
    /^$/ && in_header && !found_code { next }
    
    # 跳过 library; 行
    /^library;/ { next }
    
    # 遇到 import 或其他代码，标记为找到代码
    /^import / || /^export / || /^class / || /^enum / || /^const / || /^final / {
        in_header = 0
        found_code = 1
        print
        next
    }
    
    # 如果已经找到代码，打印所有内容
    found_code { print }
    ' "$file" > "$tmp_file"
    
    # 步骤2: 替换相对路径为绝对路径
    sed -i "s|import '../core/|import 'package:warcrafty/src/core/|g" "$tmp_file"
    sed -i "s|import '../handlers/|import 'package:warcrafty/src/handlers/|g" "$tmp_file"
    sed -i "s|import '../index/|import 'package:warcrafty/src/index/|g" "$tmp_file"
    sed -i "s|import '../utils/|import 'package:warcrafty/src/utils/|g" "$tmp_file"
    sed -i "s|import '../definition/|import 'package:warcrafty/src/definition/|g" "$tmp_file"
    sed -i "s|import '../../core/|import 'package:warcrafty/src/core/|g" "$tmp_file"
    sed -i "s|import '../../handlers/|import 'package:warcrafty/src/handlers/|g" "$tmp_file"
    sed -i "s|import '../../utils/|import 'package:warcrafty/src/utils/|g" "$tmp_file"
    
    # 步骤3: 替换 export 语句的相对路径
    sed -i "s|export './|export 'package:warcrafty/src/definition/|g" "$tmp_file"
    sed -i "s|export 'base/|export 'package:warcrafty/src/definition/base/|g" "$tmp_file"
    
    # 替换原文件
    mv "$tmp_file" "$file"
    echo "✓ 完成: $file"
done

echo ""
echo "所有文件处理完成！"
