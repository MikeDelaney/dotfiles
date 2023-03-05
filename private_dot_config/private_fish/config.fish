if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.asdf/asdf.fish

# May need set -x here
set BROWSER /usr/bin/firefox
set -gx EDITOR /home/miked/Applications/nvim.appimage
set -gx PATH "$HOME/.cargo/bin" $PATH

alias ls exa
alias vim /home/miked/Applications/nvim.appimage

direnv hook fish | source

# Created by `pipx` on 2022-09-24 21:11:55
set PATH $PATH /home/miked/.local/bin
