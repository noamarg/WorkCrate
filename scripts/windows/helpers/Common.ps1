$ErrorActionPreference = "Stop"

$WorkcrateRoot = (Resolve-Path (Join-Path $PSScriptRoot "../../..")).Path
$WorkcrateBackendDir = Join-Path $WorkcrateRoot "apps/backend"
$WorkcrateFrontendDir = Join-Path $WorkcrateRoot "apps/frontend"

function Write-Info {
    param([string]$Message)
    Write-Host "[workcrate] $Message"
}

function Set-WorkcrateEnv {
    param([ValidateSet("development", "production")][string]$Mode)
    $env:WORKCRATE_ENV = $Mode
    Write-Info "WORKCRATE_ENV=$Mode"
}
