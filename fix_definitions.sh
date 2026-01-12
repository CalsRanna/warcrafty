#!/bin/bash

# 处理所有 definition 文件
find "lib/src/definition" -name "*.dart" ! -path "*/base/*" ! -name "definition.dart" ! -name "index.dart" -type f | while read file; do
    # 创建临时文件
    tmp_file="${file}.tmp"
    
    # 跳过顶部的文档注释和 library; 行，直到找到第一个 import 或 const
    awk '
    BEGIN { in_header = 1 }
    /^import / { in_header = 0 }
    /^const / { in_header = 0 }
    !in_header { print }
    in_header && /^import / { in_header = 0; print }
    in_header && /^const / { in_header = 0; print }
    ' "$file" > "$tmp_file"
    
    # 替换相对路径导入为绝对路径
    sed -i "s|import '../base/field_definition.dart';|import 'package:warcrafty/src/definition/base/field_definition.dart';|g" "$tmp_file"
    sed -i "s|import '../base/structure_definition.dart';|import 'package:warcrafty/src/definition/base/structure_definition.dart';|g" "$tmp_file"
    sed -i "s|import '../../core/field_format.dart';|import 'package:warcrafty/src/core/field_format.dart';|g" "$tmp_file"
    
    # 替换原文件
    mv "$tmp_file" "$file"
    echo "✓ 处理完成: $file"
done

echo ""
echo "所有文件处理完成！"
