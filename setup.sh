#!/usr/bin/env bash

if [ $# -eq 0 ]; then
  echo "usage: setup.sh <project_name> <optional_current_project_name>"
else
  script_dir="$(dirname $0)"
  project_name="$1"
  current_name="blank"

  if [ $# -ne 1 ]; then
    current_name=$2
  fi
  echo "changing ${current_name} to ${project_name}"

  sed -i "s/${current_name}/${project_name}/g" ${script_dir}/CMakeLists.txt
fi
