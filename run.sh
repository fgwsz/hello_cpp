#!/bin/bash
project_path=$(dirname "$(readlink -f "$0")")
project_name=$(basename "$project_path")
target_path="$project_path/target/linux/debug"

mkdir -p "$target_path"
cd "$target_path"
cmake "$project_path" -D CMAKE_BUILD_TYPE=Debug
cmake --build . --config Debug
cd "$project_path"
"$target_path/$project_name"
