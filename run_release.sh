#!/bin/bash
project_path=$(dirname "$(readlink -f "$0")")
project_name=$(basename "$project_path")
target_path="$project_path/target/linux/release"

cd "$project_path"
cmake -B $target_path -D CMAKE_BUILD_TYPE=Release
cmake --build . --config Release
"$target_path/$project_name" "$@"
