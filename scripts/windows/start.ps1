$ErrorActionPreference = "Stop"
$EntryDir = $PSScriptRoot

. (Join-Path $EntryDir "helpers/Common.ps1")
. (Join-Path $EntryDir "helpers/Backend.ps1")
. (Join-Path $EntryDir "helpers/Frontend.ps1")

try {
    Start-ApiProd
    Start-VitePreview
} finally {
    Stop-Api
}
