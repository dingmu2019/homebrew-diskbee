# homebrew-diskbee

Homebrew Cask tap for the macOS apps from Yuanchuang Huaying:

| Cask | App | 说明 |
| --- | --- | --- |
| `macdiskcleaner` | MacDiskCleaner（磁盘清理） | 扫描并清理缓存、日志、残留文件 |
| `diskbee` | DiskBee（磁盘小蜜蜂） | macOS 上读写 NTFS 磁盘 |

两个 App 均为 Developer ID 签名 + Apple 公证，支持 Apple Silicon 与 Intel。

## 安装

```bash
brew tap dingmu2019/diskbee
brew install --cask macdiskcleaner
brew install --cask diskbee
```

## 在 Applite 中使用

1. 打开 [Applite](https://applite.app/)，进入侧边栏的 **Taps**；
2. 添加 tap `dingmu2019/diskbee`；
3. 在 Taps 页搜索 `MacDiskCleaner` 或 `DiskBee`，一键安装。

## 更新

两个 App 自带 Sparkle 自动更新（cask 标记为 `auto_updates true`），
请让 App 自行升级；`brew upgrade` 不会覆盖 Sparkle 已安装的新版本。

## 卸载

```bash
brew uninstall --cask macdiskcleaner
brew uninstall --cask diskbee
```

DiskBee 会安装系统扩展与特权助手，卸载后如需彻底清理，
请使用 App 内的卸载功能（设置 → 卸载）。
