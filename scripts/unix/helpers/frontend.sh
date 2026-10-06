# Frontend (npm/Vite) helpers. Requires common.sh.

ensure_npm_deps() {
  local use_ci="${1:-0}"
  if [[ ! -d "${WORKCRATE_FRONTEND_DIR}/node_modules" ]]; then
    log_info "Installing frontend dependencies..."
    if [[ "${use_ci}" == "1" ]] && [[ -f "${WORKCRATE_FRONTEND_DIR}/package-lock.json" ]]; then
      (cd "${WORKCRATE_FRONTEND_DIR}" && npm ci)
    else
      (cd "${WORKCRATE_FRONTEND_DIR}" && npm install)
    fi
  else
    log_info "Frontend node_modules present; skipping install."
  fi
}

run_vite_dev() {
  log_info "Vite mode development (.env.development)"
  log_info "Starting Vite dev server - http://localhost:5173"
  log_info "Worker not started (stub only)."
  (cd "${WORKCRATE_FRONTEND_DIR}" && npm run dev)
}

run_frontend_test() {
  ensure_npm_deps 0
  log_info "Running frontend tests..."
  (cd "${WORKCRATE_FRONTEND_DIR}" && npm test)
}

build_frontend() {
  log_info "Vite mode production (.env.production)"
  log_info "Building frontend..."
  (
    cd "${WORKCRATE_FRONTEND_DIR}"
    if [[ -f package-lock.json ]]; then
      npm ci
    else
      npm install
    fi
    npm run build
  )
  log_info "Frontend artifacts: ${WORKCRATE_FRONTEND_DIR}/dist/"
}

require_frontend_build() {
  if [[ ! -f "${WORKCRATE_FRONTEND_DIR}/dist/index.html" ]]; then
    log_info "Missing frontend build (apps/frontend/dist). Run scripts/unix/build.sh first." >&2
    exit 1
  fi
}

run_vite_preview() {
  require_frontend_build
  ensure_npm_deps 0
  log_info "Vite mode production (.env.production)"
  log_info "Starting Vite preview (production build) - http://localhost:4173"
  log_info "Worker not started (stub only)."
  (cd "${WORKCRATE_FRONTEND_DIR}" && npm run preview)
}
