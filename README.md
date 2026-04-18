# Build-BPI-R4-PRO-OpenWRT

用于 GitHub Actions 云编译 `BPI-R4-PRO-8X` 纯净版固件。

说明：

- 只保留目标机型与官方 SD 卡镜像所需的最小配置
- 不额外预装自定义应用
- 产物要求包含官方格式的 `openwrt-mediatek-filogic-bananapi_bpi-r4-pro-8x-sdcard.img.gz`
- 构建完成后上传 `Actions Artifact` 与 `GitHub Release`

触发方式：

- 推送到 `main`
- 手动执行 `workflow_dispatch`

源码来源：

- `https://github.com/BPI-SINOVOIP/BPI-R4PRO-8X-OPENWRT-V24.10.0-Master-Devel.git`
