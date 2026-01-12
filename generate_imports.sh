#!/bin/bash

# 输出文件
output="D:\Code\warcrafty\new_imports.txt"
> "$output"

# 定义映射：模块 -> 文件路径前缀
declare -A modules=(
    ["character"]="character"
    ["creature"]="creature"
    ["faction"]="faction"
    ["gameobject"]="gameobject"
    ["item"]="item"
    ["map"]="map"
    ["quest"]="quest"
    ["skill"]="skill"
    ["spell"]="spell"
    ["gt"]="gt"
    ["other"]="other"
    ["vehicle"]="vehicle"
)

# 为每个模块生成导入语句
for module in "${!modules[@]}"; do
    path_prefix="${modules[$module]}"
    echo "// $module" >> "$output"
    
    # 查找模块中的所有 .dart 文件（除了 index.dart）
    find "lib/src/definition/$module" -name "*.dart" ! -name "index.dart" -type f | sort | while read file; do
        # 提取文件名（不带扩展名）
        filename=$(basename "$file" .dart)
        
        # 提取常量名（从文件中读取）
        const_name=$(grep -oP "^const \K\w+(?= = DbcStructureDefinition\()" "$file" | head -1)
        
        if [ -n "$const_name" ]; then
            echo "import '$path_prefix/$filename.dart' as structure_$const_name;" >> "$output"
        fi
    done
    
    echo "" >> "$output"
done

cat "$output"
