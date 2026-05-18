$project_path=Split-Path -Parent $MyInvocation.MyCommand.Definition
$project_name=Split-Path -Leaf $project_path
$target_path=Join-Path $project_path "target"

Remove-Item $target_path -Force -Recurse
