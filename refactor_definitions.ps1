# 批量重构 definition 模块文件
$root = "D:\Code\warcrafty\lib\src\definition"
$modules = @('creature', 'faction', 'gameobject', 'item', 'map', 'quest', 'skill', 'spell', 'gt', 'other', 'vehicle')

$processed = 0
$skipped = 0

foreach ($module in $modules) {
    $modulePath = Join-Path $root $module
    if (-not (Test-Path $modulePath)) {
        Write-Host "跳过 $module - 目录不存在"
        continue
    }

    Get-ChildItem -Path $modulePath -Filter "*.dart" | Where-Object { $_.Name -ne "index.dart" } | ForEach-Object {
        $filePath = $_.FullName
        $content = Get-Content $filePath -Raw -Encoding UTF8

        # 查找格式字符串声明
        if ($content -match "const String (\w+)Format = '([^']+)';\r?\n\r?\n") {
            $varName = $Matches[1]
            $formatString = $Matches[2]

            # 删除格式字符串声明
            $content = $content -replace "const String ${varName}Format = '[^']+';\r?\n\r?\n", ""

            # 修改结构定义
            $oldPattern = "const DbcStructureDefinition $varName = DbcStructureDefinition\(\r?\n  name: '([^']+)',\r?\n  format: ${varName}Format,"
            if ($content -match $oldPattern) {
                $structName = $Matches[1]
                $newStruct = "const $varName = DbcStructureDefinition(`n  name: '$structName',`n  format: '$formatString',"
                $content = $content -replace $oldPattern, $newStruct

                # 写回文件
                [System.IO.File]::WriteAllText($filePath, $content, [System.Text.UTF8Encoding]::new($false))
                Write-Host "✓ 处理完成: $filePath"
                $processed++
            }
            else {
                Write-Host "警告: 未找到结构定义 in $filePath"
                $skipped++
            }
        }
        else {
            Write-Host "跳过 $filePath - 未找到格式字符串"
            $skipped++
        }
    }
}

Write-Host "`n总计: 处理 $processed 个文件, 跳过 $skipped 个文件"

# 删除所有 index.dart 文件
Write-Host "`n删除 index.dart 文件..."
foreach ($module in $modules) {
    $indexFile = Join-Path $root "$module\index.dart"
    if (Test-Path $indexFile) {
        Remove-Item $indexFile -Force
        Write-Host "✓ 删除: $indexFile"
    }
}

Write-Host "`n重构完成！"
