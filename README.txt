                                 GhidraBundler
                    an easy way to package Ghidra for macOS

1. About

   Running Ghidra is a little awkward on macOS since it isn't packaged as a
   proper macOS app bundle. This script does not create a perfect packaging of
   Ghidra, rather it wraps Ghidra in an app bundle. This allows you to launch
   Ghidra from spotlight or put it in the Dock.

2. Usage

   Clone the repository then run build.sh to build the app bundle.

   WARNING: As of right now the URL of the latest Ghidra release is embedded in
   the script. If a new version of Ghidra is available and this script has not
   yet been updated, simply replacing the current URL with the new one should be
   enough to make it work.

3. Credits

   The wrapper AppleScript is based on Yifan Lu's wrapper script:
   https://gist.github.com/yifanlu/e9965cdb148b550335e57899f790cad2
