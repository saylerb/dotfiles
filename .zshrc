[ -f ~/.profile ] && source ~/.profile

source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacs-gui='open -a /Applications/Emacs.app $1'
alias work='cd ~/workspace/work'
alias personal='cd ~/workspace/personal'

__git_files () {
    _wanted files expl 'local files' _files
}

em () {
  open -a /usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs $*
}

[ `/usr/libexec/java_home &> /dev/null` $? -eq 0 ] && export JAVA_HOME=$(/usr/libexec/java_home -v 11)

jdk() {
  version=$1
  export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
  java -version
}

export PATH=~/.local/bin:/usr/local/bin:/usr/local/sbin:$PATH

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

fpath=( ~/.zsh-functions "${fpath[@]}" )

#!/usr/bin/env zsh
plugins=(
  aws
  git
  autojump
  #zsh-autosuggestions
  zsh-syntax-highlighting
)
ZSH_THEME="robbyrussell"

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
export EDITOR=vim # nvim
export LESS=-RX
export GPG_TTY=$(tty)

setopt dotglob

# Add prompt for current kubernetes context: https://github.com/jonmosco/kube-ps1
#source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"


# Set prompt to include kube-ps1 and aws_ps1
#
# PS1='$(kube_ps1)[${AWS_DEFAULT_PROFILE:-read-only}$(aws_ps1)]'$PS1

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

[ -f ~/.zsh_custom ] && source ~/.zsh_custom

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
#
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#random   export EDITOR='mvim'
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

export PATH=$PATH:/$HOME/go/bin

## BEGIN ANSIBLE MANAGED BLOCK - nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# END ANSIBLE MANAGED BLOCK - nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fpath=( ~/.zsh-functions "${fpath[@]}" )

eval "$(starship init zsh)"

# Add kubectl completion
source <(kubectl completion zsh | sed s/kubectl/k/g)


