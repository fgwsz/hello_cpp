$project_path=Split-Path -Parent $MyInvocation.MyCommand.Definition
$target_path=Join-Path $project_path "target/windows/release"

cd $project_path
cmake -B $target_path -D CMAKE_BUILD_TYPE=Release
cmake --build $target_path --config Release
