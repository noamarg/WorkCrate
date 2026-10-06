$ErrorActionPreference = "Stop"
$EntryDir = $PSScriptRoot

. (Join-Path $EntryDir "helpers/Common.ps1")
. (Join-Path $EntryDir "helpers/Backend.ps1")
. (Join-Path $EntryDir "helpers/Frontend.ps1")

Ensure-GoDeps
Run-GoTest
Run-FrontendTest

Write-Info "All tests passed."
