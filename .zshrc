# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/juarri/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='eza' 
alias ll='eza -l'
alias la='eza -la'

alias bc='better-commits'

alias df='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 

alias pipes='pipes-rs -p 100 -r 0' 

PATH="$PATH":"$HOME/.local/bin/"

bindkey -s ^f "tmux-sessionizer\n"

# starship
eval "$(starship init zsh)"


#zoxide
eval "$(zoxide init zsh)"


# fnm
export PATH="/home/juarri/.local/share/fnm:$PATH"
eval "`fnm env`"


# turso
export PATH="/home/juarri/.turso:$PATH"


# bun
[ -s "/home/juarri/.bun/_bun" ] && source "/home/juarri/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# pnpm
export PNPM_HOME="/home/juarri/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


# deno
export DENO_INSTALL="/home/juarri/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"


# bob
PATH="$PATH:/home/juarri/.local/share/bob/nvim-bin"


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi
