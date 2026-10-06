$script:WorkcrateApiProcess = $null

function Ensure-GoDeps {
    Write-Info "Downloading Go module dependencies..."
    Push-Location $WorkcrateBackendDir
    try {
        go mod download
    } finally {
        Pop-Location
    }
}

function Start-ApiDev {
    Set-WorkcrateEnv -Mode "development"
    Write-Info "Loading $WorkcrateBackendDir\.env.development"
    Write-Info "Starting API (go run ./cmd/api)..."
    $script:WorkcrateApiProcess = Start-Process -FilePath "go" `
        -ArgumentList "run", "./cmd/api" `
        -WorkingDirectory $WorkcrateBackendDir `
        -PassThru -NoNewWindow
    Write-Info "API PID $($script:WorkcrateApiProcess.Id) - http://localhost:8080/health"
}

function Stop-Api {
    if ($null -ne $script:WorkcrateApiProcess -and -not $script:WorkcrateApiProcess.HasExited) {
        Write-Info "Stopping API (PID $($script:WorkcrateApiProcess.Id))..."
        Stop-Process -Id $script:WorkcrateApiProcess.Id -Force -ErrorAction SilentlyContinue
    }
    $script:WorkcrateApiProcess = $null
}

function Stop-ApiDev {
    Stop-Api
}

function Stop-ApiProd {
    Stop-Api
}

function Require-BackendBuild {
    $apiBin = Join-Path $WorkcrateBackendDir "bin\api.exe"
    if (-not (Test-Path $apiBin)) {
        Write-Error "Missing backend build ($apiBin). Run scripts/windows/build.ps1 first."
    }
}

function Start-ApiProd {
    Require-BackendBuild
    Set-WorkcrateEnv -Mode "production"
    Write-Info "Loading $WorkcrateBackendDir\.env.production"
    $apiBin = Join-Path $WorkcrateBackendDir "bin\api.exe"
    Write-Info "Starting API (bin/api.exe)..."
    $script:WorkcrateApiProcess = Start-Process -FilePath $apiBin `
        -WorkingDirectory $WorkcrateBackendDir `
        -PassThru -NoNewWindow
    Write-Info "API PID $($script:WorkcrateApiProcess.Id) - http://localhost:8080/health"
}

function Run-GoTest {
    Write-Info "Running Go tests..."
    Push-Location $WorkcrateBackendDir
    try {
        go test ./...
    } finally {
        Pop-Location
    }
}

function Build-Backend {
    Write-Info "Building backend binaries..."
    $binDir = Join-Path $WorkcrateBackendDir "bin"
    if (-not (Test-Path $binDir)) {
        New-Item -ItemType Directory -Path $binDir | Out-Null
    }
    Push-Location $WorkcrateBackendDir
    try {
        go build -o bin/api ./cmd/api
        go build -o bin/worker ./cmd/worker
    } finally {
        Pop-Location
    }
    Write-Info "Backend artifacts: $(Join-Path $binDir 'api.exe'), $(Join-Path $binDir 'worker.exe')"
}
