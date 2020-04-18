#!/usr/bin/env bash

# Remove a previous build if it exists.
rm -rf Ghidra.app

# Compile the AppleScript responsible for launching Ghidra.
osacompile -o Ghidra.app wrapper.applescript

mkdir -p build

# Download an extract Ghidra.
curl -o build/ghidra.zip https://ghidra-sre.org/ghidra_9.1.2_PUBLIC_20200212.zip
unzip -d build build/ghidra.zip

# Copy the Ghidra installation to the app bundle.
cp -r build/ghidra_* Ghidra.app/Contents/ghidra

rm -rf build

# Replace the default icon with the Ghidra one.
\cp assets/applet.icns Ghidra.app/Contents/Resources/applet.icns
