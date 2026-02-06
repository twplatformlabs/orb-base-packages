#!/usr/bin/env bash
set -eo pipefail

# Fetch the latest version of GitHub CLI
get_latest_cli_version() {
    GH_VERSION=$(curl -L -s https://api.github.com/repos/cli/cli/releases/latest | jq -r .tag_name)
    GH_VERSION="${GH_VERSION//v}"
}

# Install gh
install_gh_cli() {
    echo "Installing GitHub CLI version v${GH_VERSION}"
    curl -L "https://github.com/cli/cli/releases/download/v${GH_VERSION}/gh_${GH_VERSION}_linux_amd64.tar.gz" --output "gh_${GH_VERSION}_linux_amd64.tar.gz"
    sudo tar -xzf "gh_${GH_VERSION}_linux_amd64.tar.gz" -C /usr/local/bin --strip-components=2 "gh_${GH_VERSION}_linux_amd64/bin/gh"
    rm "gh_${GH_VERSION}_linux_amd64.tar.gz"
}

if [[ "$GH_VERSION" == "latest" ]]; then
    get_latest_cli_version
fi

echo "Installing GitHub CLI version v${GH_VERSION}"
install_gh_cli
gh version