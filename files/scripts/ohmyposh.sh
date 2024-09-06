#!/usr/bin/env bash

set -oue pipefail

curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /usr/local/bin
oh-my-posh font install cascadiacode