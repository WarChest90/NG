#!/bin/bash
if [[ $1 == "force" ]]; then
    rm "wick-editor" -r
    git clone https://github.com/Wicklets/wick-editor.git
    read -i "Update?"
    cd "wick-editor"
    npm install
else
    echo "Use update force to delete and reclone the Repository"
    git fetch --all
    cd "wick-editor"
    read -i "Update?"
    npm install
fi;
