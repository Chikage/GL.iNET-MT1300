#!/bin/bash

pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
#sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
rm -rf luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-theme-argon.git
git clone -b master https://github.com/jerrykuku/luci-app-argon-config.git
popd

mkdir package/community
pushd package/community
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall
popd

#sed -i 's/192.168/10.168/g' package/base-files/files/bin/config_generate