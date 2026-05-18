$project_path=Split-Path -Parent $MyInvocation.MyCommand.Definition
$project_name=Split-Path -Leaf $project_path
$target_path=Join-Path $project_path "target/windows/release"

mkdir -Force $target_path
cd $target_path
cmake -G "Visual Studio 17 2022" $project_path
cmake --build . --config Release
cd $project_path
&"$target_path/Release/$project_name.exe" $args
