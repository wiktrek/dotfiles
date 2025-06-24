if [[ $- == *i* ]]; then
    pokego --no-title -r 1,2,3,4,5,6

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
