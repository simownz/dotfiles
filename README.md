# dotfiles

Personal Linux config files.

## Contents

- `.zshrc` — Zsh config (Zinit, Starship prompt, aliases for eza/bat, zoxide, fzf)
- `.config/ghostty/config` — Ghostty terminal (JetBrainsMono Nerd Font, Darkermatrix theme, 0.96 opacity)
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
- Zsh + Zinit
- Starship
- eza, bat (installed as `batcat`), zoxide, fzf, fastfetch, btop
- JetBrainsMono Nerd Font (or any Nerd Font)
