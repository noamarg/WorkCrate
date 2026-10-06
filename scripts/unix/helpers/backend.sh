# Backend (Go) helpers. Requires common.sh.

WORKCRATE_API_PID=""

ensure_go_deps() {
  log_info "Downloading Go module dependencies..."
  (cd "${WORKCRATE_BACKEND_DIR}" && go mod download)
}

start_api_dev() {
  export_workcrate_env development
  log_info "Loading ${WORKCRATE_BACKEND_DIR}/.env.development"
  log_info "Starting API (go run ./cmd/api)..."
  (cd "${WORKCRATE_BACKEND_DIR}" && go run ./cmd/api) &
  WORKCRATE_API_PID=$!
  log_info "API PID ${WORKCRATE_API_PID} - http://localhost:8080/health"
}

stop_api() {
  if [[ -n "${WORKCRATE_API_PID}" ]] && kill -0 "${WORKCRATE_API_PID}" 2>/dev/null; then
    log_info "Stopping API (PID ${WORKCRATE_API_PID})..."
    kill "${WORKCRATE_API_PID}" 2>/dev/null || true
    wait "${WORKCRATE_API_PID}" 2>/dev/null || true
  fi
  WORKCRATE_API_PID=""
}

stop_api_dev() {
  stop_api
}

require_backend_build() {
  if [[ ! -x "${WORKCRATE_BACKEND_DIR}/bin/api" ]] && [[ ! -f "${WORKCRATE_BACKEND_DIR}/bin/api" ]]; then
    log_info "Missing backend build (apps/backend/bin/api). Run scripts/unix/build.sh first." >&2
    exit 1
  fi
}

start_api_prod() {
  require_backend_build
  export_workcrate_env production
  log_info "Loading ${WORKCRATE_BACKEND_DIR}/.env.production"
  log_info "Starting API (bin/api)..."
  (cd "${WORKCRATE_BACKEND_DIR}" && ./bin/api) &
  WORKCRATE_API_PID=$!
  log_info "API PID ${WORKCRATE_API_PID} - http://localhost:8080/health"
}

stop_api_prod() {
  stop_api
}

run_go_test() {
  log_info "Running Go tests..."
  (cd "${WORKCRATE_BACKEND_DIR}" && go test ./...)
}

build_backend() {
  log_info "Building backend binaries..."
  mkdir -p "${WORKCRATE_BACKEND_DIR}/bin"
  (
    cd "${WORKCRATE_BACKEND_DIR}"
    go build -o bin/api ./cmd/api
    go build -o bin/worker ./cmd/worker
  )
  log_info "Backend artifacts: ${WORKCRATE_BACKEND_DIR}/bin/api, ${WORKCRATE_BACKEND_DIR}/bin/worker"
}
