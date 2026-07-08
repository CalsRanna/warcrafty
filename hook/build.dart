/// Warcrafty 的原生依赖构建 hook。
///
/// 当前版本只处理 macOS：自动确保 Homebrew 的 StormLib bottle 已安装。
/// 运行时 `MpqArchive` 会从 `/opt/homebrew/opt/stormlib/lib/libstorm.dylib`
/// 或 `/usr/local/opt/stormlib/lib/libstorm.dylib` 加载原生库。
///
/// 后续如维护自有 StormLib release，可在这里扩展为：按目标平台下载
/// .dylib/.so/.dll、校验 SHA256、注册 CodeAsset。
library;

import 'dart:io';

import 'package:hooks/hooks.dart';

void main(List<String> args) async {
  await build(args, (input, output) async {
    final enabled = input.userDefines['brew'] as bool? ?? true;
    if (!enabled || !Platform.isMacOS) return;

    final brew = await Process.run('which', ['brew']);
    if (brew.exitCode != 0) {
      throw StateError(
        'Warcrafty MPQ 功能需要 StormLib。macOS 上请先安装 Homebrew，'
        '或设置 hooks.user_defines.warcrafty.brew=false 后手动设置 '
        'WARCRAFTY_STORMLIB_PATH。',
      );
    }

    final installed = await Process.run('brew', ['list', 'stormlib']);
    if (installed.exitCode != 0) {
      final install = await Process.run('brew', ['install', 'stormlib']);
      if (install.exitCode != 0) {
        throw StateError(
          '自动安装 StormLib 失败。\n'
          'stdout:\n${install.stdout}\n'
          'stderr:\n${install.stderr}',
        );
      }
    }

    final prefix = await Process.run('brew', ['--prefix', 'stormlib']);
    if (prefix.exitCode != 0) {
      throw StateError('无法获取 StormLib Homebrew 前缀: ${prefix.stderr}');
    }
    final dylib = File('${prefix.stdout.toString().trim()}/lib/libstorm.dylib');
    if (!dylib.existsSync()) {
      throw StateError('StormLib 已安装，但未找到动态库: ${dylib.path}');
    }
  });
}
