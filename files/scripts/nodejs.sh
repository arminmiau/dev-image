#!/usr/bin/env bash

set -oue pipefail

curl -fsSL https://fnm.vercel.app/install | bash -- -d /usr/bin
source ~/.bashrc

fnm use --install-if-missing 20