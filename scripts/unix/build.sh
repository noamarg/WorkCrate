#!/usr/bin/env bash
set -euo pipefail

WORKCRATE_SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=helpers/common.sh
source "${WORKCRATE_SCRIPT_DIR}/helpers/common.sh"
# shellcheck source=helpers/backend.sh
source "${WORKCRATE_SCRIPT_DIR}/helpers/backend.sh"
# shellcheck source=helpers/frontend.sh
source "${WORKCRATE_SCRIPT_DIR}/helpers/frontend.sh"

ensure_go_deps
build_backend
ensure_npm_deps 1
build_frontend

log_info "Build complete."
