if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.asdf/asdf.fish

# May need set -x here
set BROWSER /usr/bin/firefox
set -gx EDITOR nvim
set -gx PATH "$HOME/.cargo/bin" $PATH
set -x FLUTTER_ROOT (asdf where flutter)
set -x PATH (asdf where flutter)/bin $PATH
# For Fly.io cli (used for Actual Budget
set -gx PATH "$HOME/.fly/bin" $PATH

alias ls eza
alias vim nvim
alias vi nvim
alias lg lazygit
alias mysql "podman exec -it mysql mysql -p"
alias psql "podman exec -it postgres psql -U postgres"

direnv hook fish | source

# Created by `pipx` on 2022-09-24 21:11:55
set PATH $PATH /home/miked/.local/bin
