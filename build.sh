#!/bin/zsh

clean_output() {
    rm -r .build 2>/dev/null
}

create_output_folder() {
    mkdir -p .build/content/scripts
}

copy_manifest() {
    cp mod.xml ./.build/
    cp thumbnail.png ./.build/
}

copy_sources() {
    cd ./src
    cp -r --parents **/*.lua ../.build/content/scripts
    cd ..
}

clean_output
create_output_folder
copy_manifest
copy_sources
