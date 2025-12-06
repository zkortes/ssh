#!/bin/bash

set -e

PKG="$1"

if [ -z "$PKG" ]; then
    echo "Укажите название пакета: $0 <package>"
    exit 1
fi

dnf versionlock delete "$PKG"
dnf update "$PKG" -y
dnf versionlock add "$PKG"
