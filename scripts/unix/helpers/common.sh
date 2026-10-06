# Shared paths and logging for WorkCrate deploy scripts.
# Sourced from scripts/unix entry scripts — do not run directly.

if [[ -z "${WORKCRATE_SCRIPT_DIR:-}" ]]; then
  echo "common.sh must be sourced from an entry script" >&2
  exit 1
fi

WORKCRATE_ROOT="$(cd "${WORKCRATE_SCRIPT_DIR}/../.." && pwd)"
WORKCRATE_BACKEND_DIR="${WORKCRATE_ROOT}/apps/backend"
WORKCRATE_FRONTEND_DIR="${WORKCRATE_ROOT}/apps/frontend"

log_info() {
  echo "[workcrate] $*"
}

# development | production — selects .env.<mode> in backend and Vite --mode for frontend.
export_workcrate_env() {
  export WORKCRATE_ENV="${1}"
  log_info "WORKCRATE_ENV=${WORKCRATE_ENV}"
}
