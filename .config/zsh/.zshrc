# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$XDG_DATA_HOME/oh-my-zsh"

# HISTFILE defined in "~/.profile".
# export HISTFILE="$XDG_STATE_HOME/zsh/history"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Reminder: themes location: $ZSH_CUSTOM/themes

# ZSH_THEME="gnzh"
# ZSH_THEME="new"
# ZSH_THEME="agnoster"
# ZSH_THEME="miloshadzic"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="half-life"
# ZSH_THEME="kardan"
# ZSH_THEME="gallois"

# ZSH_THEME='rainbow'
# ZSH_THEME='my-theme'
# ZSH_THEME='simple'
# ZSH_THEME='arch'
ZSH_THEME="my-half-life"
#
# ZSH_THEME='blinks'
# ZSH_THEME='eastwood'
# ZSH_THEME='random'
# ZSH_THEME='frisk'
# ZSH_THEME='trapd00r'
# ZSH_THEME='cypher'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# When we source $ZSH/oh-my-zsh.sh, the compinit command dumps to that new location instead of $HOME
ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/.zsh_aliases

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# [[ ! -f ${ZDOTDIR:-~}/.p10k.zsh ]] || source ${ZDOTDIR:-~}/.p10k.zsh

# Leave only last occurence of a command
setopt HIST_IGNORE_ALL_DUPS
# setopt HIST_IGNORE_SPACE
#
# Remove timestamps
unsetopt EXTENDED_HISTORY

setopt cdable_vars

# Those are now handled by st
# Alt + Right Arrow
# bindkey "^[[1;3C" forward-word

# Shift + Home selection
# bindkey "^[[1;2H" select-in-word; beginning-of-line
# bindkey "^[[1;2H" beginning-of-line

# Alt + Left Arrow
# bindkey "^[[1;3D" backward-word

# Control + Right Arrow
# bindkey "^[[1;5C" forward-word
# Control + Left Arrow
# bindkey "^[[1;5D" backward-word

# bindkey "^[[3~" backward-delete-char
# bindkey "^[[P" backward-delete-char

zstyle ':completion:*' ignored-patterns \
    'down-line-or-beginning-search' \
    'zcompile' \
    'xconsole'

