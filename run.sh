#!/bin/bash
project_path=$(dirname "$(readlink -f "$0")")
project_name=$(basename "$project_path")
target_path="$project_path/target/linux/debug"

cd "$project_path"
cmake -B $target_path -D CMAKE_BUILD_TYPE=Debug
cmake --build . --config Debug
"$target_path/$project_name" "$@"
