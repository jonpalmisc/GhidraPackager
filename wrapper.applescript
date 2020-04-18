-- Adapted from Yifan Lu's original script:
-- https://gist.github.com/yifanlu/e9965cdb148b550335e57899f790cad2

set UnixPath to POSIX path of (path to me as text)
set GhidraRun to UnixPath & "/Contents/ghidra/ghidraRun"
do shell script (quoted form of GhidraRun)
