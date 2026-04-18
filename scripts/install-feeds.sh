#!/usr/bin/env bash
set -euo pipefail

./scripts/feeds update -a

# Install base feeds first, then pin duplicated custom packages to the wanted feed.
./scripts/feeds install -a -p packages
./scripts/feeds install -a -p luci
./scripts/feeds install -a -p routing
./scripts/feeds install -a -p telephony
./scripts/feeds install -a -p mtk_openwrt_feed

./scripts/feeds install -p kenzo -f \
  ddns-go \
  luci-app-ddns-go \
  luci-i18n-ddns-go-zh-cn \
  luci-app-store \
  luci-app-istorex \
  luci-app-quickstart \
  luci-i18n-quickstart-zh-cn \
  luci-lib-taskd \
  luci-lib-xterm \
  quickstart \
  taskd

./scripts/feeds install -p small -f \
  luci-app-openclash

./scripts/feeds install -p luci -f \
  luci-app-dockerman \
  luci-i18n-dockerman-zh-cn \
  luci-lib-docker \
  luci-lib-ip
