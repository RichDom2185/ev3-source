#!/bin/bash

set -euxo pipefail

SCRIPT_DIR="$(dirname "$(realpath -s "${BASH_SOURCE[0]}")")"
cd "$SCRIPT_DIR"

sudo -u \#$(stat --printf="%u" "$SCRIPT_DIR/build_sling.sh") -g \#$(stat --printf="%g" "$SCRIPT_DIR/build_sling.sh") "$SCRIPT_DIR/.docker_build.sh"
sudo -u \#$(stat --printf="%u" "$SCRIPT_DIR/build_sling.sh") -g \#$(stat --printf="%g" "$SCRIPT_DIR/build_sling.sh") "$SCRIPT_DIR/.docker_build_panel.sh"
