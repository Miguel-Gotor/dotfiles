#!/bin/sh
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {printf "CPU: %.2f%%\n", usage}'