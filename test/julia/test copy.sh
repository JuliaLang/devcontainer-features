#!/usr/bin/env bash

set -e

# Clean up
rm -rf /var/lib/apt/lists/*

apt_get_update() {
    if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
        echo "Running apt-get update..."
        apt-get update -y
    fi
}

# Checks if packages are installed and installs them if not
check_packages() {
    if ! dpkg -s "$@" >/dev/null 2>&1; then
        apt_get_update
        apt-get -y install --no-install-recommends "$@"
    fi
}

check_packages curl ca-certificates jq
json_url="https://julialang-s3.julialang.org/bin/versions.json"
regex="1\\.6\\.[0-9]+$"
LATEST_VERSION="$(curl -sL "${json_url}" | jq '.[].files[] | select(.arch == "'"$(uname -m)"'" and .triplet == "'"$(uname -m)"'-linux-gnu") | .version' -r | grep -oP "${regex}" | sort -rV | head -n 1)"

# shellcheck source=/dev/null
source dev-container-features-test-lib

# Feature-specific tests
check "version" julia --version | grep "$LATEST_VERSION"

# Report result
reportResults
