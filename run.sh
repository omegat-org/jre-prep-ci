#!/usr/bin/env bash

jres=(https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u265-b01/OpenJDK8U-jre_x64_linux_hotspot_8u265b01.tar.gz
    https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u265-b01/OpenJDK8U-jre_x64_mac_hotspot_8u265b01.tar.gz
    https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u265-b01/OpenJDK8U-jre_x86-32_windows_hotspot_8u265b01.zip
    https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u265-b01/OpenJDK8U-jre_x64_windows_hotspot_8u265b01.zip)

mkdir -p dist
cd dist || exit 1

for url in "${jres[@]}"; do
    curl -L -O "$url"
done
