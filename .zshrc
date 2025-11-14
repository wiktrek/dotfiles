#
# THIS FILE IS RUN INSIDE .user.zsh (HyDE)
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

export EDITOR=code


# Aliases
alias ls='eza -1 --icons=auto'
alias un='$aurhelper -Rns'
alias up='$aurhelper -Syu'


plugins=(
    "sudo"
    "git"
    "zsh-autosuggestions"
    "zsh-syntax-highlighting"
    "zsh-completions" 
)


# bun
# add to ~/.zshrc
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
