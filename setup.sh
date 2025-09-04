#!/bin/bash

function exitOnError() {
  if [ $# -ne 2 ]; then
    echo "Wrong args in exit"
    exit 1
  fi

  if [ $1 -ne $2 ]; then
    echo "Wrong args"
    exit 1
  fi
}

exitOnError $# 1
project_path="$(dirname $0)"
project_name="$1"

sed -i "s/blank/${project_name}/g" ${project_path}${project_name}/CMakeLists.txt
sed -i "s/blank/${project_name}/g" ${project_path}${project_name}/config.cmake.in
