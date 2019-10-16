#!/bin/bash

cp ranga-cli ranga-recovery-instruct  ranga-client-windows/usr/bin
cp bash-completion/ranga-cli-completion.bash ranga-client-windows/usr/share/bash-completion/completions/ranga-cli

7z a -t7z -m0=lzma2 -mx=9 -mfb=64 -md=1024m -ms=on ranga-client-windows.7z ranga-client-windows/
