#!/usr/bin/env bash

# Ensure we got the proper arguments.
if [ "$#" -ne 1 ]; then
    echo "Error: Invalid arguments."
    echo "Usage: ./ghidrapkg.sh <ghidra.zip>"
    echo ""
    echo "For more information, see README.txt."
    exit 1
fi

# Remove a previous build if it exists.
echo "Removing previous build if exists..."
rm -rf Ghidra.app

# Compile the AppleScript responsible for launching Ghidra.
echo "Compiling launcher script..."
osacompile -o Ghidra.app wrapper.applescript

mkdir -p build

# Extract Ghidra.
cp "$1" build/dist.zip

echo "Extracting Ghidra archive..."
unzip -qq -d build build/dist.zip

# Copy the Ghidra installation to the app bundle.
echo "Copying extracted archive contents..."
cp -r build/ghidra* Ghidra.app/Contents/ghidra

echo "Removing build directory..."
rm -rf build

# Replace the default icon with the Ghidra one.
echo "Updating app icon..."
cp assets/applet.icns Ghidra.app/Contents/Resources/applet.icns

echo "Done!"
