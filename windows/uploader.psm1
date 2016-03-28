# This script uploads a directory to an S3 bucket.

[CmdletBinding()]
Param(
  [String]Directory = $null
)

$ErrorActionPreference = "stop"
Set-StrictMode -Version Latest

Import-Module -Name SQLite

Function Get-Files {
  Get-ChildItem -Recurse -Path $Directory -Filter *.jpg
}