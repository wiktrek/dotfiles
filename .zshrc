#
# THIS FILE IS RUN INSIDE .user.zsh (HyDE)
#


export EDITOR=code

autoload -U compinit; compinit

# Aliases
alias ls='eza -1 --icons=auto'
alias un='$aurhelper -Rns'
alias up='$aurhelper -Syu'
alias cd='z'
alias vim='nvim'

# keybinds
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# history

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:*' switch-group '<' '>'


#
# POKEMON
#


if [[ $- == *i* ]]; then
    if command -v pokego >/dev/null; then
        pokego --no-title -r 1,2,3,4,5,6 && echo
    elif command -v pokemon-colorscripts >/dev/null; then
        pokemon-colorscripts --no-title -r 1,3,6
    elif command -v fastfetch >/dev/null; then
        if do_render "image"; then
            fastfetch --logo-type kitty
        fi
    fi
fi

# zoxide

eval "$(zoxide init zsh)"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

