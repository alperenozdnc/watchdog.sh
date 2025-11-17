#!/bin/bash

HOME_DIR="$HOME"

inotifywait -m -e create --format "%w%f" "$HOME_DIR" | while read NEW_DIR
do
    if [[ "$(basename "$NEW_DIR")" == "Downloads" && -d "$NEW_DIR" ]]; then
        rm -rf "$NEW_DIR"
    fi
done

