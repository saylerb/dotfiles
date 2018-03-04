[ -f ~/.profile ] && source ~/.profile
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacs-gui='open -a /Applications/Emacs.app $1'

em () {
  open -a /usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs $*
}

source /usr/local/share/antigen/antigen.zsh

[ `/libexec/java_home &> /dev/null` $? -eq 1 ] && export JAVA_HOME=$(/usr/libexec/java_home)

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle lukechilds/zsh-nvm

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

# Shortcuts to Turing Folders

alias cm='cd ~/workspace/thoughtworks/complaint-manager'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f /Users/saylerb/.travis/travis.sh ] && source /Users/saylerb/.travis/travis.sh

export PATH=$PATH:/usr/local/bin

# BEGIN ANSIBLE MANAGED BLOCK - nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# END ANSIBLE MANAGED BLOCK - nvm
