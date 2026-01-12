#!/bin/bash
file="lib/src/definition/definition.dart"

# 创建备份
cp "$file" "$file.bak"

# 使用 sed 删除所有旧的格式字符串和Struct属性对
# 从 "// ===== 角色 =====" 开始到 "// ===== DBC 格式字符串注册表" 之前
# 由于改动太大，我将重写整个 Definitions 类

echo "正在准备重写 Definitions 类..."
