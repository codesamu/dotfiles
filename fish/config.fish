# ~/.config/fish/config.fish
# ============================
# User configuration for Fish
# ============================

# --- Environment ---
set -gx EDITOR nvim
set -gx PATH $HOME/bin /usr/local/bin $PATH
set -g fish_greeting ""

# --- Aliases ---
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias y='yazi'

# --- Functions ---
function extract
    if test (count $argv) -eq 0
        echo "Usage: extract <file>"
        return 1
    end
    for f in $argv
        switch $f
            case *.tar.bz2
                tar xjf $f
            case *.tar.gz
                tar xzf $f
            case *.tar.xz
                tar xf $f
            case *.bz2
                bunzip2 $f
            case *.rar
                unrar x $f
            case *.gz
                gunzip $f
            case *.tar
                tar xf $f
            case *.zip
                unzip $f
            case *.7z
                7z x $f
            case '*'
                echo "extract: cannot extract $f"
        end
    end
end

# --- zoxide integration ---
if type -q zoxide
    zoxide init fish | source
end

# --- Optional keybindings ---
fish_vi_key_bindings # vim-style editing
