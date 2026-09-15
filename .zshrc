# ~/.zshrc — minimal config

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY
setopt EXTENDED_HISTORY

# Keybindings (emacs mode)
bindkey -e

# Completion
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Plugins (system packages)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias ls='eza --icons'
alias ll='eza -lah --icons --git'
alias la='eza -la --icons --git'
alias lt='eza --tree --icons --level=2'
alias cat='batcat'
alias ff='fastfetch'
alias bt='btop'
alias update='sudo apt update && sudo apt upgrade'

# HTB helpers
mkt() {
    mkdir -p nmap content exploits scripts tmp
}

extractPorts() {
    if (( $# != 1 )) || [[ ! -r "$1" ]]; then
        print -u2 'Usage: extractPorts <nmap-output>'
        return 1
    fi

    local ports ip_address
    ports=$(grep -oP '\d{1,5}(?=/open)' -- "$1" | paste -sd, -)
    ip_address=$(grep -oP '\d{1,3}(?:\.\d{1,3}){3}' -- "$1" | head -n 1)

    printf '\n[*] Extracting information...\n\n\t[+] IP Address: %s\n\t[+] Open ports: %s\n\n' "$ip_address" "$ports"
    printf '%s %s' "$ports" "$ip_address" | xclip -selection clipboard &&
        printf '[*] Ports and IP copied to clipboard\n\n'
}

# Tools
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

# PATH
export PATH=/home/dumpzi/.local/bin:$PATH
