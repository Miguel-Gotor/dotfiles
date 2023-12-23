# Changing/making/removing directory
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

# https://superuser.com/a/1647630
# "If you don't use --, you will get an error message that -= is a bad option.
# This is because - normally introduces a flag. To tell alias not to treat - as
# the prefix to a flag but as an argument, you use -- before -. -- tells 
# commands that what follows should be treated as arguments, not as options."
alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

# List directory contents
# alias l='ls -Ahp1 --group-directories-first'
alias l='ls -AhF1 --group-directories-first'
# alias l='ls -Ah1 --group-directories-first'
alias ll='l -l'
alias lt='ll -t'
alias lv='ll -v'
