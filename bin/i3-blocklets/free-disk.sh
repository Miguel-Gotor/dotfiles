#!/bin/sh
echo $(lsblk -o SIZE /dev/sda2 | awk 'NR==2 {print $1}')