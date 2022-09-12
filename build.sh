#!/bin/zsh

clean_output() {
    echo "  - Cleaning output..."
    rm -r .build 2>/dev/null
}

create_output_folder() {
    echo "  - Creating folder structure..."
    mkdir -p .build/content/scripts
}

copy_manifest() {
    echo "  - Copying manifest files..."
    cp mod.xml ./.build/
    cp thumbnail.png ./.build/
}

copy_sources() {
    echo "  - Copying mod sources..."
    cd ./src
    cp -r --parents **/*.lua ../.build/content/scripts
    cd ..
}

clean_output
create_output_folder
copy_manifest
copy_sources
