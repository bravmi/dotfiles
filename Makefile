
install:
	install-myprofile \
	install-zsh \
	install-zsh-custom \
	install-git

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
	ln -s `pwd`/tmux.conf ~/.tmux.conf

install-micro-mac:
	rm -f ~/.config/micro/bindings.json
	ln -s `pwd`/micro/bindings.json ~/.config/micro/bindings.json

install-sublime-mac:
	rm -f "$$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
	ln -s `pwd`/sublime/Preferences-mac.sublime-settings "$$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

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

install-ssh:
	rm -f ~/.ssh/config
	ln -s `pwd`/ssh_config ~/.ssh/config

install-sqlite:
	rm -f ~/.sqliterc
	ln -s `pwd`/sqliterc ~/.sqliterc

install-lazydocker:
	rm -f "$$HOME/Library/Application Support/lazydocker/config.yml"
	ln -s `pwd`/lazydocker/config.yml "$$HOME/Library/Application Support/lazydocker/config.yml"

install-brew:
	brew install asdf
	brew install bat
	brew install broot
	brew install ctop
	brew install curlie
	brew install direnv
	brew install dive
	brew install duf
	brew install fd
	brew install fzf
	brew install go
	brew install grc
	brew install gron
	brew install helm
	brew install htop
	brew install hyperfine
	brew install jless
	brew install jq
	brew install k9s
	brew install kubectx
	brew install lazydocker
	brew install litecli
	brew install micro
	brew install ncdu
	brew install pgcli
	brew install pyenv
	brew install shellcheck
	brew install the_silver_searcher
	brew install tig
	brew install tldr
	brew install tmux
	brew install zsh-lovers
	brew install noti
	brew install kubernetes-cli
	brew install mimestream

install-brew-cask:
	brew install --cask brave-browser
	brew install --cask docker
	brew install --cask google-chrome
	brew install --cask iterm2
	brew install --cask racket
	brew install --cask rectangle
	brew install --cask silicon-info
	brew install --cask slack
	brew install --cask spotify
	brew install --cask telegram
	brew install --cask tunnelblick
	brew install --cask visual-studio-code
	brew install --cask zoom

install-brew-mac:
	brew install gnu-sed
	brew install nmap
	brew install postgresql
	brew install telnet
	brew install wget

install-pip:
	pip install aiohttp
	pip install awsclient-local
	pip install black
	pip install cookiecutter
	pip install databases[aiosqlite]
	pip install django
	pip install fastapi
	pip install flake8
	pip install flask
	pip install httpie
	pip install ipdb
	pip install ipython
	pip install isort
	pip install jupyter
	pip install localstack
	pip install mypy
	pip install numpy
	pip install pandas
	pip install pip-autoremove
	pip install poetry
	pip install pony
	pip install pre-commit
	pip install psycopg2-binary
	pip install pydantic
	pip install pypyp
	pip install pytest
	pip install pytest-asyncio
	pip install pyupgrade
	pip install sh
	pip install speedtest-cli
	pip install sqlalchemy
	pip install tabulate
	pip install uvicorn[standard]
