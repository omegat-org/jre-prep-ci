#!/usr/bin/env bash

jres=(
    https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jre_x64_linux_hotspot_8u362b09.tar.gz
    https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jre_x64_mac_hotspot_8u362b09.tar.gz
    https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jre_x86-32_windows_hotspot_8u362b09.zip
    https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jre_x64_windows_hotspot_8u362b09.zip
)

mkdir -p dist
cd dist || exit 1

for url in "${jres[@]}"; do
    curl -L -O "$url"
done
