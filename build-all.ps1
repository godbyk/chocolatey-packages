$OrigDir = $PWD
$ScriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
Set-Location $ScriptPath
foreach ($nuspec in @(Get-ChildItem -path "$PWD\*.nuspec" -recurse)) {
    Set-Location $nuspec.Directory.Parent.FullName
    nuget pack (join-path $nuspec.Directory $nuspec.Name) -NoPackageAnalysis -NonInteractive
}
Set-Location $OrigDir