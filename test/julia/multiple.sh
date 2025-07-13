#!/usr/bin/env bash

set -e

# shellcheck source=/dev/null
source dev-container-features-test-lib

# helper function (lts and release should be installed)
check_version_count() {
  local count
  count=$(juliaup status | awk 'NR > 2 { print $(NF-1) }' | wc -l)
  [ "$count" -eq 4 ] # matches number in scenarios.json
}

# Feature-specific tests
check "version" julia --version
check "version-count" check_version_count

# Report result
reportResults
