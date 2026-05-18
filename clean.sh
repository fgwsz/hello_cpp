#!/bin/bash
project_path=$(dirname "$(readlink -f "$0")")
project_name=$(basename "$project_path")
target_path="$project_path/target"

rm -rf "target_path"
