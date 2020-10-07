                                   ghidrapkg 
                    an easy way to package Ghidra for macOS

1. About

   Running Ghidra is a little awkward on macOS since it isn't packaged as a
   proper macOS app bundle. This script does not create a perfect packaging of
   Ghidra, rather it wraps Ghidra in an app bundle. This allows you to launch
   Ghidra from spotlight or put it in the Dock.

2. Usage

   a) Download a pre-built release of Ghidra or compile it yourself.

   b) Clone the repository.

   c) Place the zipped Ghidra build in the cloned repository's root directory.

   d) ./ghidrapkg.sh <build.zip>

   e) Move Ghidra.app to your Applications folder or wherever you want it.

   f) Reverse engineer things!

3. Credits

   The wrapper AppleScript is based on Yifan Lu's wrapper script:
   https://gist.github.com/yifanlu/e9965cdb148b550335e57899f790cad2
