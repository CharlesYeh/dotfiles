# dotfiles

Personal shell config in a single `bash_profile`. Zsh sources it via `zshrc`.

## Install

```bash
git clone https://github.com/CharlesYeh/dotfiles.git ~/src/dotfiles
cd ~/src/dotfiles
./install.sh
```

## Layout

| File | Purpose |
|------|---------|
| `bash_profile` | Git config, macOS defaults, aliases, functions |
| `zshrc` | Sources `bash_profile` + `~/.zshrc.local` |
| `*.local.example` | Template for secrets and machine config |

Secrets (`JFROG_KEY`, API tokens, `asdf`, etc.) go in `~/.bash_profile.local` or `~/.zshrc.local` — not committed.
