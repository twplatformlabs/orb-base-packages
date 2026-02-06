#!/usr/bin/env bash
set -eo pipefail

echo "snyk install depends on nodejs and npm."
echo "Installing snyk version v${SNYK_VERSION} on nodejs $(node --version)"
if [[ "$SNYK_VERSION" == "latest" ]]; then
    npm install -g snyk
else
    npm install -g snyk@"$SNYK_VERSION"
fi

snyk --version
