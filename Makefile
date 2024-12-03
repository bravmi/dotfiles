
.PHONY: *

install:
	make install-git
	make install-myprofile
	make install-zsh
	make install-zsh-custom
	make update-submodules

install-more:
	make install-act
	make install-brew
	make install-broot
	make install-ipython
	make install-lazydocker
	make install-pgcli
	make install-sqlite
	make install-tig
	make install-vim

install-mac:
	make install-brew-cask
	make install-brew-mac
	make install-colima
	make install-micro-mac
	make install-sublime-mac
	make install-tmux-mac
	make install-vscode-mac

install-apt:
	apt install curl --yes
	apt install git --yes
	apt install make --yes
	apt install zoxide --yes
	apt install zsh --yes

install-myprofile:
	rm -f ~/.myprofile
	ln -s `pwd`/myprofile ~/.myprofile

install-zsh:
	rm -f ~/.zshrc
	ln -s `pwd`/zsh/zshrc ~/.zshrc

install-zsh-custom:
	rm -rf ~/.zsh-custom
	ln -s `pwd`/zsh/custom ~/.zsh-custom

install-tmux-mac:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux/mac.conf ~/.tmux.conf

install-micro-mac:
	mkdir -p ~/.config/micro/
	rm -f ~/.config/micro/bindings.json
	ln -s `pwd`/micro/bindings-mac.json ~/.config/micro/bindings.json
	rm -f ~/.config/micro/settings.json
	ln -s `pwd`/micro/settings.json ~/.config/micro/settings.json

install-sublime-mac:
	rm -f "$$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
	ln -s `pwd`/sublime/Preferences-mac.sublime-settings "$$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
	rm -f "$$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
	ln -s `pwd`/sublime/Default-mac.sublime-keymap "$$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"

install-vscode-mac:
	mkdir -p "$$HOME/Library/Application Support/Code/User/"
	rm -f "$$HOME/Library/Application Support/Code/User/settings.json"
	ln -s `pwd`/vscode/settings-mac.json "$$HOME/Library/Application Support/Code/User/settings.json"
	rm -f "$$HOME/Library/Application Support/Code/User/keybindings.json"
	ln -s `pwd`/vscode/keybindings-mac.json "$$HOME/Library/Application Support/Code/User/keybindings.json"
	rm -rf "$$HOME/Library/Application Support/Code/User/snippets"
	ln -s `pwd`/vscode/snippets/ "$$HOME/Library/Application Support/Code/User/snippets"

install-ipython:
	mkdir -p ~/.ipython/profile_default/
	rm -f ~/.ipython/profile_default/ipython_config.py
	ln -s `pwd`/ipython/ipython_config.py ~/.ipython/profile_default/ipython_config.py
	rm -rf ~/.ipython/extensions
	ln -s `pwd`/ipython/extensions ~/.ipython/extensions

install-git:
	rm -f ~/.gitignore
	ln -s `pwd`/git/gitignore ~/.gitignore
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-ssh-mac:
	rm -f ~/.ssh/config
	ln -s `pwd`/ssh/config-mac ~/.ssh/config

install-sqlite:
	rm -f ~/.sqliterc
	ln -s `pwd`/sqliterc ~/.sqliterc

install-lazydocker:
	mkdir -p "$$HOME/Library/Application Support/lazydocker/"
	rm -f "$$HOME/Library/Application Support/lazydocker/config.yml"
	ln -s `pwd`/lazydocker/config.yml "$$HOME/Library/Application Support/lazydocker/config.yml"

install-pgcli:
	mkdir -p ~/.config/pgcli/
	rm -f ~/.config/pgcli/config
	ln -s `pwd`/pgcli/config ~/.config/pgcli/config

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-broot:
	rm -rf ~/.config/broot/conf.hjson
	ln -s `pwd`/broot/conf.hjson ~/.config/broot/conf.hjson

install-tig:
	rm -rf ~/.tigrc
	ln -s `pwd`/tigrc ~/.tigrc

install-colima:
	mkdir -p ~/.colima/default/
	rm -rf ~/.colima/default/colima.yaml
	ln -s `pwd`/colima/default/colima.yaml ~/.colima/default/colima.yaml

install-colima-qemu:
	mkdir -p ~/.colima/qemu/
	rm -rf ~/.colima/qemu/colima.yaml
	ln -s `pwd`/colima/qemu/colima.yaml ~/.colima/qemu/colima.yaml

install-act:
	rm -rf ~/.actrc
	ln -s `pwd`/actrc ~/.actrc

install-starship:
	rm -rf ~/.config/starship.toml
	ln -s `pwd`/starship.toml ~/.config/starship.toml

install-kitty:
	rm -rf ~/.config/kitty/kitty.conf
	ln -s `pwd`/kitty/kitty.conf ~/.config/kitty/kitty.conf

install-zed:
	rm -rf ~/.config/zed/settings.json
	ln -s `pwd`/zed/settings.json ~/.config/zed/settings.json
	
install-hammerspoon:
	rm -rf ~/.hammerspoon/init.lua
	ln -s `pwd`/hammerspoon/init.lua ~/.hammerspoon/init.lua
	
install-todo:
	rm -rf ~/.todo/config
	ln -s `pwd`/todo/config ~/.todo/config

install-asdf:
	asdf plugin add python
	asdf plugin add nodejs

install-brew:
	brew install act
	brew install asdf
	brew install awscli
	brew install bat
	brew install bitwarden-cli
	brew install broot
	brew install cmatrix
	brew install cowsay
	brew install ctop
	brew install curlie
	brew install dependency-check
	brew install direnv
	brew install dive
	brew install doctl
	brew install duf
	brew install entr
	brew install fd
	brew install fzf
	brew install gh
	brew install glances
	brew install glow
	brew install go
	brew install golangci-lint
	brew install gping
	brew install grc
	brew install gron
	brew install helm
	brew install hey
	brew install htop
	brew install httpstat
	brew install hyperfine
	brew install jc
	brew install jless
	brew install jq
	brew install k9s
	brew install krew
	brew install kubectx
	brew install kubernetes-cli
	brew install lazydocker
	brew install lazygit
	brew install litecli
	brew install logcli
	brew install lolcat
	brew install lynx
	brew install micro
	brew install mtr
	brew install mycli
	brew install ncdu
	brew install neofetch
	brew install noti
	brew install nsq
	brew install pgcli
	brew install pyenv
	brew install ripgrep
	brew install scc
	brew install shellcheck
	brew install shfmt
	brew install sshuttle
	brew install starship
	brew install the_silver_searcher
	brew install tig
	brew install tldr
	brew install tmux
	brew install yt-dlp
	brew install zoxide
	brew install zsh-lovers
	brew install certigo
	brew install trivy
	brew install hadolint
	brew install sd
	brew install openvpn
	brew install gpg2
	brew install gnupg
	brew install pinentry-mac
	brew install xq
	brew install todo-txt
	brew install yq

install-brew-cask:
	brew install --cask alacritty
	brew install --cask android-file-transfer
	brew install --cask bitwarden
	brew install --cask brave-browser
	brew install --cask clipy
	brew install --cask dash
	brew install --cask docker
	brew install --cask eul
	brew install --cask geekbench
	brew install --cask google-chrome
	brew install --cask google-cloud-sdk
	brew install --cask google-drive
	brew install --cask hot
	brew install --cask intellij-idea
	brew install --cask iterm2
	brew install --cask keepassxc
	brew install --cask kindle
	brew install --cask kitty
	brew install --cask lens
	brew install --cask mattermost
	brew install --cask mimestream
	brew install --cask openlens
	brew install --cask postman
	brew install --cask pycharm-ce
	brew install --cask pycharm
	brew install --cask racket
	brew install --cask rectangle
	brew install --cask silicon-info
	brew install --cask slack
	brew install --cask spotify
	brew install --cask tailscale
	brew install --cask telegram
	brew install --cask transmission
	brew install --cask tunnelblick
	brew install --cask visual-studio-code
	brew install --cask zoom
	brew install --cask raycast
	brew install --cask firefox
	brew install --cask vlc
	brew install --cask tomatobar
	brew install --cask ngrok
	brew install --cask anki
	brew install --cask whatsapp
	brew install --cask lulu
	brew install --cask jetbrains-toolbox
	brew install --cask 1password
	brew install --cask 1password-cli
	brew install --cask blockblock
	brew install --cask hiddenbar
	brew install --cask openvpn-connect
	brew install --cask zed
	brew install --cask hammerspoon
	brew install --cask fsnotes

install-brew-mac:
	brew install azure-cli
	brew install bluesnooze
	brew install blueutil
	brew install colima
	brew install exa
	brew install ffmpeg
	brew install findutils
	brew install fish
	brew install git-lfs
	brew install gnu-sed
	brew install graphviz
	brew install grpcurl
	brew install iproute2mac
	brew install kcat
	brew install mosh
	brew install mysql
	brew install nano
	brew install nmap
	brew install openblas
	brew install postgresql@14
	brew install redis
	brew install renameutils
	brew install rustup-init
	brew install telnet
	brew install tree
	brew install wget
	brew install android-platform-tools
	brew install socat
	brew install pstree
	brew install jo
	brew install btm
	brew install grep
	brew install mas
	brew install ipcalc
	brew install gitlab-runner
	brew install unar
	brew install djvulibre
	brew install difftastic
	brew install mongosh
	brew install jordanbaird-ice
	brew install hexyl
	brew install stress
	brew install basictex
	brew install diff-so-fancy
	brew install git-delta

# TODO: make it pipx
install-pip:
	pip install aiocron
	pip install aiodns
	pip install aiofiles
	pip install aiohttp
	pip install aiokafka
	pip install alembic
	pip install asyncpg
	pip install attrs
	pip install awscli-local[ver1]
	pip install bandit
	pip install black
	pip install boto3
	pip install confluent-kafka
	pip install cookiecutter
	pip install crossplane
	pip install databases[aiosqlite]
	pip install devtools[pygments]
	pip install django
	pip install fastapi
	pip install flake8
	pip install flask
	pip install flask-migrate
	pip install furl
	pip install gevent
	pip install greenlet
	pip install gunicorn
	pip install httpie
	pip install httpx
	pip install hypothesis
	pip install ipdb
	pip install ipython
	pip install isort
	pip install jupyter
	pip install localstack
	pip install matplotlib
	pip install memory-profiler
	pip install memray
	pip install mypy
	pip install notebook
	pip install numpy
	pip install orjson
	pip install pandas
	pip install pendulum
	pip install pip-autoremove
	pip install pip-compile
	pip install pipe
	pip install poetry
	pip install pony
	pip install pre-commit
	pip install prometheus-client
	pip install psutil
	pip install psycopg
	pip install psycopg2
	pip install psycopg2-binary
	pip install pydantic
	pip install pygments
	pip install pymysql
	pip install pyperformance
	pip install pypyp
	pip install pytest
	pip install pytest-asyncio
	pip install python-jose
	pip install python-multipart
	pip install pyupgrade
	pip install reloadium
	pip install rich
	pip install s3fs
	pip install scipy
	pip install sentry-sdk[fastapi]
	pip install sh
	pip install speedtest-cli
	pip install sqlalchemy
	pip install sqlfluff
	pip install structlog
	pip install tabulate
	pip install uvicorn[standard]
	pip install watchfiles
	pip install wheel
	pip install yappi
	pip install py-spy
	pip install aiomonitor
	pip install aioconsole
	pip install aiodocker
	pip install pillow
	pip install opencv-python
	pip install pyyaml
	pip install dictdiffer
	pip install pyopenssl
	pip install aiostream
	pip install deptry
	pip install vulture
	pip install pygame
	pip install sympy
	pip install yal
	pip install humanize
	pip install fastui
	pip install pyotp
	pip install openai
	pip install regex
	pip install faststream
	pip install bs4
	pip install lxml
	pip install line-profiler[ipython]
	pip install manhole
	pip install funcy
	pip install time-machine
	pip install cryptography
	pip install docker
	pip install stringcase
	pip install aiocache
	pip install cachetools
	pip install identify

install-cargo:
	cargo install when-cli

install-go:
	go install github.com/antonmedv/walk@latest
	go install github.com/boyter/cs@latest
	go install github.com/deviceinsight/kafkactl@latest
	go install github.com/projectdiscovery/httpx/cmd/httpx@latest
	go install github.com/wader/fq@latest

install-npm:
	npm install @githubnext/github-copilot-cli --global
	npm install gitlab-search --global

update-submodules:
	git submodule update --init --recursive --remote

install-krew:
	kubectl krew install modify-secret
	kubectl krew install konfig
	kubectl krew install resource-capacity

list:
	$(MAKE) --print-data-base --no-builtin-rules --no-builtin-variables --question \
	| egrep '^(install|update|upgrade)' \
	| sed -E 's/:$$//g' \
	| sort \
	| uniq

upgrade:
	brew update && brew upgrade
	omz update
	$(MAKE) update-submodules
