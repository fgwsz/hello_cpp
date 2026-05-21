$project_path=Split-Path -Parent $MyInvocation.MyCommand.Definition
$target_path=Join-Path $project_path "target/windows/debug"

cd $project_path
cmake -B $target_path -D CMAKE_BUILD_TYPE=Debug
cmake --build $target_path --config Debug
