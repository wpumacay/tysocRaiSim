#!/usr/bin/env bash

for repo in ext/raisim ext/imgui ext/spdlog ext/pybind11 ext/tiny_math ext/tiny_renderer ext/googletest core
do
    if [ -d ${repo} ]
    then
        echo "Checking status: ${repo}"
        cd "${repo}" 
        git remote -v
        git status 
        cd "../.."
    else
        echo "Repo not found: ${repo}"
    fi
    echo "----------------------------------------------------"
done