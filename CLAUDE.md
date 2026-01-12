# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 常用命令

```bash
# 安装依赖
dart pub get

# 运行测试
dart test

# 静态分析
dart analyze
```

## 项目概述

**Warcrafty** 是一个高性能的 Dart 库，用于读写魔兽世界客户端使用的 DBC (Database Client) 二进制文件格式。纯 Dart 实现，无外部运行时依赖。

## 代码架构

```
lib/
├── warcrafty.dart              # 主入口，统一导出所有 API
└── src/
    ├── core/                   # 核心加载/写入
    │   ├── dbc_loader.dart     # DBC 文件读取器 (同步/异步)
    │   ├── dbc_writer.dart     # DBC 文件写入器 (字符串去重)
    │   ├── field_format.dart   # 字段格式枚举 (n=索引, i=整数, s=字符串等)
    │   └── header.dart         # DBC 文件头结构
    ├── handlers/               # 处理器
    │   ├── offset_calculator.dart  # 字段字节偏移量计算
    │   └── string_handler.dart     # 字符串块 O(1) 查找
    ├── index/                  # 索引与搜索
    │   ├── binary_search.dart      # 二分搜索算法
    │   └── index_builder.dart      # ID 索引构建器
    └── formats/                # 100+ 预定义 DBC 格式
        ├── achievement/ creature/ faction/ item/ map/
        ├── quest/ skill/ spell/ vehicle/ 等
```

## 核心 API

- **DbcLoader**: 读取 DBC 文件，支持 `loadFromPath()` 和 `loadAsync()`
- **DbcWriter**: 写入 DBC 文件，支持 `writeToPath()` 和 `copyWithModify()`
- **DbcIndexBuilder**: 基于 ID 的索引构建，支持 `lookup(id)` 二分查找
- **DbcRecord**: 单条记录的字段访问 (`getInt`, `getString`, `getFloat` 等)

## 格式字符串

格式字符串定义记录结构，与 AzerothCore 完全兼容：
- `n` - 索引字段 (4字节)
- `i` - 32位有符号整数 (4字节)
- `b` - 8位无符号整数 (1字节)
- `f` - 浮点数 (4字节)
- `s` - 字符串偏移量 (4字节)
- `x` / `X` - 跳过字段
- `d` - 排序字段
- `l` - 布尔值

## 测试覆盖

测试使用 `package:test`，覆盖：字节序转换、字段格式解析、偏移量计算、文件头解析、字符串处理、二分搜索、索引构建、DBC 读写操作。
