# CharlesYeh/dotfiles

# Git
git config --global pager.branch false
git config --global pull.rebase false
git config --global push.autoSetupRemote true
git config --global push.default current
git config --global fetch.all true
git config --global fetch.prune true
git config --global remote.origin.fetch '+refs/heads/*:refs/remotes/origin/*'

# macOS defaults
if [[ "$(uname -s)" == Darwin ]]; then
  defaults write com.apple.finder AppleShowAllFiles YES
  defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
fi

# Aliases
alias vv='. venv/bin/activate'
alias ls='ls -G'
alias l='ls'
alias ll='l -l'
alias la='l -al'
alias d='cd ..'
alias grep='grep --color=auto'
alias grn='grep -rn'
alias gcs='./bin/gcloud-ssh'
alias msm='mutagen sync monitor'

alias glg='git log --graph --all --oneline --decorate'
alias gaa='git add -A'
alias gcp='git cherry-pick'
alias gca='git commit -a --amend'
alias gc='git checkout'
alias gb='git branch'
alias gs='git branch; git status'
alias gt='git stash'
alias gl='git log'
alias gd='git diff'
alias gdc='gd --cached'
alias gdm='git diff master'
alias gh='git show'
alias gr='git rebase'
alias gmt='git commit -a --amend --no-edit'

alias dst='docker-compose up -d web vite; ./bin/setup-mutagen'
alias ds='docker-compose up -d web; ./bin/setup-mutagen'
alias dr='docker compose run --rm web /bin/bash'
alias drs='docker compose run --rm web bundle e rails c'
alias ra='rubocop -a'

alias arm='env /usr/bin/arch -arm64 /bin/zsh --login'
alias intel='env /usr/bin/arch -x86_64 /bin/zsh --login'
alias brow='arch -x86_64 /usr/local/bin/brew'

# Functions
cd() {
  builtin cd "$@" && ls
}

rnm() {
  rename -e "s/$1/$2/" **/*"$1"*
}

# Local overrides (secrets, paths, tool init) — not in git
[[ -f "$HOME/.bash_profile.local" ]] && . "$HOME/.bash_profile.local"
