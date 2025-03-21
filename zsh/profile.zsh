#!/usr/bin/bash

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.krew/bin:$PATH

# =python

alias python=python3
alias pip=pip3
alias ipdb=ipdb3

export PYTHONBREAKPOINT=ipdb.set_trace

export ipython="$HOME/.ipython/profile_default/startup/"

export PIP_DISABLE_PIP_VERSION_CHECK=1

# =bash

tabs -4

stty -ixon # disable xoff/xon signaling for ctrl+s

# =scheme

alias miti='racket -i -f '
alias mit='racket -f '

# =docker

# if command -v colima &> /dev/null; then
#     export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"
# fi

export DOCKER_CLI_HINTS=false

# =other

export LESS='-iRF'

export EDITOR=micro
export BAT_THEME='Monokai Extended'

export HOMEBREW_NO_AUTO_UPDATE=
export HOMEBREW_NO_ANALYTICS=1

export LANG=en_US.UTF-8

export FZF_DEFAULT_OPTS='--multi --height=45%'

export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'

export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc

alias sudo='sudo '

alias xl='exa --group-directories-first --classify --git'
alias xll='xl --long'

alias help=run-help

alias idea='open -a "IntelliJ IDEA.app"'
alias idean='open -na "IntelliJ IDEA.app" --args'
alias pycharm='open -a "PyCharm.app"'
alias goland='open -a "GoLand.app"'
alias textedit='open -a TextEdit'

alias wts='github-copilot-cli what-the-shell'

alias hist=history

alias tailscale='/Applications/Tailscale.app/Contents/MacOS/Tailscale'

alias dc=cd

alias rg='rg --smart-case'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

alias '$'=''

test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh || true
