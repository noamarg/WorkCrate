$ErrorActionPreference = "Stop"
$EntryDir = $PSScriptRoot

. (Join-Path $EntryDir "helpers/Common.ps1")
. (Join-Path $EntryDir "helpers/Backend.ps1")
. (Join-Path $EntryDir "helpers/Frontend.ps1")

try {
    Ensure-GoDeps
    Start-ApiDev
    Ensure-NpmDeps -UseCi $false
    Start-ViteDev
} finally {
    Stop-Api
}
