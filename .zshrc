# Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Historique
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE SHARE_HISTORY

# Complétion native Zsh
autoload -Uz compinit && compinit

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Powerlevel10k
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# Mise à jour des plugins
alias zsh-update="git -C ~/.zsh/zsh-autosuggestions pull && git -C ~/.zsh/zsh-syntax-highlighting pull && git -C ~/.zsh/powerlevel10k pull"
alias ls='ls --color=auto'

# Config Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Config locale spécifique à la machine
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local