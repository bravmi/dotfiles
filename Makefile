
.PHONY: *

install:
	make install-git
	make install-myprofile
	make install-zsh
	make install-zsh-custom
	make update-submodules

install-more:
	make install-brew
	make install-broot
	make install-ipython
	make install-lazydocker
	make install-pgcli
	make install-sqlite
	make install-tig
	make install-vim
	make install-act

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
	rm -f "$$HOME/Library/Application Support/Code/User/settings.json"
	ln -s `pwd`/vscode/settings-mac.json "$$HOME/Library/Application Support/Code/User/settings.json"
	rm -f "$$HOME/Library/Application Support/Code/User/keybindings.json"
	ln -s `pwd`/vscode/keybindings-mac.json "$$HOME/Library/Application Support/Code/User/keybindings.json"
	rm -rf "$$HOME/Library/Application Support/Code/User/snippets/"
	ln -s `pwd`/vscode/snippets/ "$$HOME/Library/Application Support/Code/User/snippets"

install-ipython:
	rm -f ~/.ipython/profile_default/ipython_config.py
	ln -s `pwd`/ipython/ipython_config.py ~/.ipython/profile_default/ipython_config.py
	rm -rf ~/.ipython/extensions
	ln -s `pwd`/ipython/extensions ~/.ipython/extensions

install-git:
	rm -f ~/.gitignore
	ln -s `pwd`/git/gitignore ~/.gitignore

install-ssh-mac:
	rm -f ~/.ssh/config
	ln -s `pwd`/ssh/config-mac ~/.ssh/config

install-sqlite:
	rm -f ~/.sqliterc
	ln -s `pwd`/sqliterc ~/.sqliterc

install-lazydocker:
	rm -f "$$HOME/Library/Application Support/lazydocker/config.yml"
	ln -s `pwd`/lazydocker/config.yml "$$HOME/Library/Application Support/lazydocker/config.yml"

install-pgcli:
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
	rm -rf ~/.colima/default/colima.yaml
	ln -s `pwd`/colima/colima.yaml ~/.colima/default/colima.yaml

install-act:
	rm -rf ~/.actrc
	ln -s `pwd`/actrc ~/.actrc

install-brew:
	brew install asdf
	brew install awscli
	brew install bat
	brew install broot
	brew install ctop
	brew install curlie
	brew install direnv
	brew install dive
	brew install duf
	brew install entr
	brew install fd
	brew install fzf
	brew install glances
	brew install glow
	brew install go
	brew install grc
	brew install gron
	brew install helm
	brew install hey
	brew install htop
	brew install hyperfine
	brew install jless
	brew install jq
	brew install k9s
	brew install kubectx
	brew install kubernetes-cli
	brew install lazydocker
	brew install lazygit
	brew install litecli
	brew install micro
	brew install mtr
	brew install mycli
	brew install ncdu
	brew install neofetch
	brew install noti
	brew install pgcli
	brew install pyenv
	brew install shellcheck
	brew install the_silver_searcher
	brew install tig
	brew install tldr
	brew install tmux
	brew install zsh-lovers
	brew install ripgrep
	brew install yt-dlp
	brew install shfmt
	brew install krew
	brew install zoxide
	brew install scc
	brew install lynx
	brew install sshuttle
	brew install gh
	brew install jc
	brew install bitwarden-cli
	brew install lolcat
	brew install cowsay
	brew install act
	brew install dependency-check

install-brew-cask:
	brew install --cask brave-browser
	brew install --cask clipy
	brew install --cask docker
	brew install --cask eul
	brew install --cask google-chrome
	brew install --cask hot
	brew install --cask iterm2
	brew install --cask lens
	brew install --cask mimestream
	brew install --cask postman
	brew install --cask racket
	brew install --cask rectangle
	brew install --cask silicon-info
	brew install --cask slack
	brew install --cask spotify
	brew install --cask telegram
	brew install --cask tunnelblick
	brew install --cask visual-studio-code
	brew install --cask zoom
	brew install --cask openlens
	brew install --cask intellij-idea
	brew install --cask pycharm-ce
	brew install --cask keepassxc
	brew install --cask bitwarden

install-brew-mac:
	brew install gnu-sed
	brew install mysql
	brew install nmap
	brew install postgresql
	brew install telnet
	brew install wget
	brew install findutils
	brew install graphviz
	brew install colima
	brew install ffmpeg
	brew install nano
	brew install mosh
	brew install bluesnooze
	brew install blueutil

install-pip:
	pip install aiofiles
	pip install aiohttp
	pip install alembic
	pip install attrs
	pip install awscli-local[ver1]
	pip install black
	pip install cookiecutter
	pip install databases[aiosqlite]
	pip install django
	pip install fastapi
	pip install flake8
	pip install flask
	pip install flask-migrate
	pip install furl
	pip install gunicorn
	pip install httpie
	pip install httpx
	pip install hypothesis
	pip install ipdb
	pip install ipython
	pip install isort
	pip install jupyter
	pip install localstack
	pip install mypy
	pip install notebook
	pip install numpy
	pip install pandas
	pip install pip-autoremove
	pip install pipe
	pip install poetry
	pip install pony
	pip install pre-commit
	pip install psycopg2-binary
	pip install pydantic
	pip install pygments
	pip install pypyp
	pip install pytest
	pip install pytest-asyncio
	pip install python-multipart
	pip install pyupgrade
	pip install reloadium
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
	pip install rich
	pip install pendulum
	pip install devtools[pygments]
	pip install pip-compile
	pip install crossplane
	pip install matplotlib
	pip install scipy

install-cargo:
	cargo install when-cli

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
