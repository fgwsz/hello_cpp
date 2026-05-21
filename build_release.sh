#!/bin/bash
project_path=$(dirname "$(readlink -f "$0")")
target_path="$project_path/target/linux/release"

cd "$project_path"
cmake -B $target_path -D CMAKE_BUILD_TYPE=Release
cmake --build . --config Release
