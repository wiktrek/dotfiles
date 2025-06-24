if [[ $- == *i* ]]; then
    # This is a good place to load graphic/ascii art, display system information, etc.
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
alias un='$aurhelper -Rns'                                             # uninstall package
alias up='$aurhelper -Syu'


plugins=(
    "sudo"
    "git"
    "zsh-autosuggestions"
    "zsh-syntax-highlighting"
    "zsh-completions" 
)