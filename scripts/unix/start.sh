#!/usr/bin/env bash
set -euo pipefail

WORKCRATE_SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=helpers/common.sh
source "${WORKCRATE_SCRIPT_DIR}/helpers/common.sh"
# shellcheck source=helpers/backend.sh
source "${WORKCRATE_SCRIPT_DIR}/helpers/backend.sh"
# shellcheck source=helpers/frontend.sh
source "${WORKCRATE_SCRIPT_DIR}/helpers/frontend.sh"

trap stop_api INT TERM EXIT

start_api_prod
run_vite_preview
