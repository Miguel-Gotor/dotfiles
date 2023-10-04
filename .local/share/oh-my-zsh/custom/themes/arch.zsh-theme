# Probably the simplest theme in the world. Arch linux logo (unicode) + PWD
# Directly using escape sequences messes up the prompt on Tab autocompletion
# PS1=$'\e[34m\UF303 \e[0m %~ % $ '

# PROMPT="%{$fg[blue]%}% "$'\UF303'"  %{$fg[green]%}%~ %{$reset_color%}%% "
PROMPT="%{$fg[blue]%}% "$'\UF303'"  %{$reset_color%}%~ $ "

# vim: ft=cfg
