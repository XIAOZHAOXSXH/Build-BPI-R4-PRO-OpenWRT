# Build-BPI-R4-PRO-OpenWRT

用于 GitHub Actions 云编译 `BPI-R4-PRO-8X` OpenWrt 固件。

预装内容：

- `luci-app-openclash`
- `ddns-go`
- `luci-app-ddns-go`
- `luci-app-dockerman`
- `docker` / `dockerd` / `containerd` / `runc` / `docker-compose`
- `luci-app-store`
- `luci-app-istorex`
- `luci-app-quickstart`

特性说明：

- 使用 HTTPS 拉取源码与 feeds，不包含 SSH 或 tmate 调试步骤
- `.config` 在仓库内维护，工作流中执行 `make defconfig`
- 构建完成后同时上传 `Actions Artifact` 与 `GitHub Release`
- Release 中附带本次实际展开后的 `build.config`

触发方式：

- 推送到 `main`
- 手动执行 `workflow_dispatch`

源码来源：

- `https://github.com/BPI-SINOVOIP/BPI-R4PRO-8X-OPENWRT-V24.10.0-Master-Devel.git`
