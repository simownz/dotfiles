# dotfiles

Personal Linux config files.

## Contents

- `.zshrc` — Zsh config (Starship prompt, aliases for eza/bat, zoxide, fzf)
- `.config/ghostty/config` — Ghostty terminal (JetBrainsMono Nerd Font, Homebrew theme)
- `.config/starship/starship.toml` — Starship prompt (tokyo-night preset)
- `.config/fastfetch/config.jsonc` — Fastfetch (trigger with `ff`)

## Install

```bash
cp .zshrc ~/.zshrc
mkdir -p ~/.config/ghostty ~/.config/starship ~/.config/fastfetch
cp .config/ghostty/config ~/.config/ghostty/config
cp .config/starship/starship.toml ~/.config/starship/starship.toml
cp .config/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
```

## Dependencies

- Ghostty
- Zsh, zsh-syntax-highlighting, zsh-autosuggestions
- Starship
- eza, bat (installed as `batcat`), zoxide, fzf, fastfetch, btop
- JetBrainsMono Nerd Font (or any Nerd Font)
