#!/usr/bin/bash
# add-command.sh
# As a linux newbie, I created this little script to keep track of useful
# commands that I've been discovering and using over time 
# Appends the "whatis" description for the specified command to a file if it 
# has not been added yet

cmds_file=$HOME/Documents/Linux/commands.txt

if grep -w ^$1 $cmds_file
then
    echo Command \"$1\" already added.
else
    if whatis $1
    then
        echo Command \"$1\" added!
	echo "$(whatis $1)" >> $cmds_file
    else
        echo Command \"$1\" unknown!
    fi
fi