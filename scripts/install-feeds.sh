#!/usr/bin/env bash
set -euo pipefail

./scripts/feeds update -a

# mtk-openwrt arm-trusted-firmware mirror hash has drifted; accept the currently published archive hash.
sed -i 's/PKG_MIRROR_HASH:=1138649f64ac3982330925c38c795ca6860289adbd95755991f80afa30ebdea7/PKG_MIRROR_HASH:=93fa1a61e810ed7753801f007e3ee3fa425f93ba65e19dbb64aaa78d061b239b/' package/boot/arm-trusted-firmware-mediatek/Makefile

./scripts/feeds install -a
