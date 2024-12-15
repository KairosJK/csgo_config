#!/bin/bash

if [[ -z "$1" ]]; then
    echo "error: no config path provided."
    echo "usage: $0 <config_path>"
    exit 1
fi

if [[ -d "$1" ]]; then
    echo "[installing ez_cfg configuration]"
    cp "autoexec.cfg" "$1/autoexec.cfg"
    cp -rf "ez_cfg/" "$1/ez_cfg"
    echo "ez_cfg installed successfully"
else
    echo "error: the path '$1' does not exist."
    exit 1
fi
exit 0
