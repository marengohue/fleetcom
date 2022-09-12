#!/bin/zsh

echo "Importing variables..."
source .env
source .env.local

echo "Building clean mod..."
./build.sh

echo "Installing into the game folder..."
target_dir="$game_appdata_folder/mods/fleetcom"
echo "  - Using game folder '$game_folder'"
echo "  - Installing into '$target_dir'"

pushd .
cd .build
rm -r "$target_dir" 2>/dev/null
mkdir -p "$target_dir"
cp --recursive --parents **/* $target_dir
popd

echo "Done!"
