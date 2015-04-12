# oh-my-zsh path
export ZSH=$HOME/.oh-my-zsh

# oh-my-zsh options
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"

# oh-my-zsh plugins
plugins=(git nvm colored-man colorize emoji-clock)

# Paths
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

# oh-my-zsh init
source $ZSH/oh-my-zsh.sh

# Localization
export LANG=de_DE.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="nano"
else
  export EDITOR="subl -w"
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# SSH key
export SSH_KEY_PATH="~/.ssh/dsa_id"

# GO
export GOPATH="/Users/simbo/go"
export PATH=$PATH:$GOPATH/bin

# Aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias open="open -t"

# zsh git prompt
source ~/.zsh-git-prompt/zshrc.sh

# custom prompt
PROMPT="📂  %B%{%F{magenta}%}%~%{%f%}%b $(git_super_status)
🙈  %B%{%F{cyan}%}➜%{%f%}%b "
RPROMPT="%{%F{yellow}%}%*%{%f%} $(emoji-clock)"

# travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
