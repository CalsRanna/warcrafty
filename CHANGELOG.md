## 1.1.0

### 新增功能

- **多语言字段工具** (`locale_fields.dart`)
  - `createLocaleFields()` - 生成 16 种语言的字段定义
  - `createLocaleFieldsWithFlag()` - 生成语言字段 + 标志字段
  - `createUnusedFields()` - 生成未使用字段定义
  - `createIntFields()` - 生成连续整数字段定义

- **DbcWriter 类型验证**
  - 写入前验证字段类型（int, float, string, bool）
  - byte 字段范围检查（0-255）
  - 友好的错误消息，包含记录和字段索引

- **新增测试用例**
  - DbcWriter 类型验证测试
  - 格式定义验证测试
  - 多语言字段工具测试

### 修复问题

- **BinarySearch.searchByKey** 返回值修复
  - 未找到时返回 `null` 而非 `0`，避免语义混淆

- **格式定义补全**
  - `TotemCategory` 补全所有 20 个字段定义
  - `Achievement` 重构使用多语言工具

### 改进

- **DbcWriter 代码重构**
  - 提取 `_collectStrings()` 方法，消除同步/异步代码重复
  - 提取 `_validateFieldType()` 方法，统一类型验证

- **项目配置**
  - LICENSE 文件添加 MIT 许可证
  - pubspec.yaml 添加 homepage 和 issue_tracker
  - 修复 example 文件 lint 警告

### 参考

- 格式定义参考 AzerothCore `DBCfmt.h` 和 `DBCStructure.h`

## 1.0.0

- Initial version.
