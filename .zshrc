# Created by newuser for 5.9

export EDITOR="nvim"
export VISUAL="nvim"

export PATH="${PATH}:/home/tyrael/.ghcup/ghc/9.8.2/bin"

# bat as man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

alias zconf='nvim ~/.zshrc'
alias zsrc='source ~/.zshrc'
alias lg="lazygit"
alias ff="fastfetch --disable-linewrap -l arch"
alias nv="nvim"
alias zz="z ~"

# Colorful ls
alias ls='exa'
alias ll='exa -l'

eval "$(zoxide init zsh)"

# Custom prompt using oh-my-posh
eval "$(oh-my-posh init zsh --config ~/omp-themes/omp-theme.omp.toml)"

function yy() {
        local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
        yazi "$@" --cwd-file="$tmp"
        if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
          cd -- "$cwd"
        fi
        rm -f -- "$tmp"
}

. /opt/asdf-vm/asdf.sh
