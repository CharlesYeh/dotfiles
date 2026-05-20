# CharlesYeh/dotfiles — zsh loads bash_profile, then local overrides

[[ -f "$HOME/.bash_profile" ]] && source "$HOME/.bash_profile"
[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"
