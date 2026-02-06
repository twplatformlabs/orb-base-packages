#!/usr/bin/env bash
set -eo pipefail

echo "Install Teller version: 1.5.6"
curl -SLO "https://github.com/tellerops/teller/releases/download/v1.5.6/teller_1.5.6_Linux_x86_64.tar.gz"
sudo tar -xvf teller_1.5.6_Linux_x86_64.tar.gz teller
sudo mv ./teller /usr/local/bin/teller
rm teller_1.5.6_Linux_x86_64.tar.gz

cosign version
