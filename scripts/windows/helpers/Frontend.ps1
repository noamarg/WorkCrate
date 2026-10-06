function Ensure-NpmDeps {
    param([bool]$UseCi = $false)

    $nodeModules = Join-Path $WorkcrateFrontendDir "node_modules"
    if (-not (Test-Path $nodeModules)) {
        Write-Info "Installing frontend dependencies..."
        Push-Location $WorkcrateFrontendDir
        try {
            if ($UseCi -and (Test-Path (Join-Path $WorkcrateFrontendDir "package-lock.json"))) {
                npm ci
            } else {
                npm install
            }
        } finally {
            Pop-Location
        }
    } else {
        Write-Info "Frontend node_modules present; skipping install."
    }
}

function Start-ViteDev {
    Write-Info "Vite mode development (.env.development)"
    Write-Info "Starting Vite dev server - http://localhost:5173"
    Write-Info "Worker not started (stub only)."
    Push-Location $WorkcrateFrontendDir
    try {
        npm run dev
    } finally {
        Pop-Location
    }
}

function Run-FrontendTest {
    Ensure-NpmDeps -UseCi $false
    Write-Info "Running frontend tests..."
    Push-Location $WorkcrateFrontendDir
    try {
        npm test
    } finally {
        Pop-Location
    }
}

function Build-Frontend {
    Write-Info "Vite mode production (.env.production)"
    Write-Info "Building frontend..."
    Push-Location $WorkcrateFrontendDir
    try {
        if (Test-Path "package-lock.json") {
            npm ci
        } else {
            npm install
        }
        npm run build
    } finally {
        Pop-Location
    }
    Write-Info "Frontend artifacts: $WorkcrateFrontendDir\dist\"
}

function Require-FrontendBuild {
    $index = Join-Path $WorkcrateFrontendDir "dist\index.html"
    if (-not (Test-Path $index)) {
        Write-Error "Missing frontend build ($index). Run scripts/windows/build.ps1 first."
    }
}

function Start-VitePreview {
    Require-FrontendBuild
    Ensure-NpmDeps -UseCi $false
    Write-Info "Vite mode production (.env.production)"
    Write-Info "Starting Vite preview (production build) - http://localhost:4173"
    Write-Info "Worker not started (stub only)."
    Push-Location $WorkcrateFrontendDir
    try {
        npm run preview
    } finally {
        Pop-Location
    }
}
