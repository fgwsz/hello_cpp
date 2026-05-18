#!/bin/bash
project_path=$(dirname "$(readlink -f "$0")")
project_name=$(basename "$project_path")
target_path="$project_path/target"

if [ -d "$target_path" ]; then
    rm -rf "target_path"
fi
