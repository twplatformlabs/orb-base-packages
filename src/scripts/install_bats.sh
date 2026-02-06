#!/usr/bin/env bash
set -eo pipefail

echo "bats install depends on nodejs and npm."
echo "Installing bats version v${BATS_VERSION} on nodejs $(node --version)"
if [[ "$BATS_VERSION" == "latest" ]]; then
    npm install -g bats
else
    npm install -g bats@"$BATS_VERSION"
fi

bats --version
