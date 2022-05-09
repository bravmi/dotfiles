
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
	rm -rf ~/.oh-my-zsh/custom
	ln -s `pwd`/zsh/custom ~/.oh-my-zsh/custom

install-tmux-mac:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux.conf ~/.tmux.conf

install-micro-mac:
	rm -f ~/.config/micro/bindings.json
	ln -s `pwd`/micro/bindings.json ~/.config/micro/bindings.json

install-sublime-mac:
	rm -f "$$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
	ln -s `pwd`/sublime/Preferences.sublime-settings "$$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

install-vscode-mac:
	rm -f "$$HOME/Library/Application Support/Code/User/settings.json"
	ln -s `pwd`/vscode/settings.json "$$HOME/Library/Application Support/Code/User/settings.json"

install-ipython:
	rm -f "$$HOME/.ipython/profile_default/ipython_config.py"
	ln -s `pwd`/ipython/ipython_config.py "$$HOME/.ipython/profile_default/ipython_config.py"

install-git:
	rm -f ~/.gitignore
	ln -s `pwd`/git/gitignore ~/.gitignore

test:
	echo $$ZSH

install-brew:
	brew install --cask brave-browser
	brew install --cask docker
	brew install --cask google-chrome
	brew install --cask iterm2
	brew install --cask rectangle
	brew install --cask silicon-info
	brew install --cask slack
	brew install --cask tunnelblick
	brew install --cask visual-studio-code
	brew install asdf
	brew install bat
	brew install ctop
	brew install direnv
	brew install duf
	brew install fzf
	brew install go
	brew install htop
	brew install kubectx
	brew install lazydocker
	brew install micro
	brew install pyenv
	brew install the_silver_searcher
	brew install tig
	brew install tldr
	brew install tmux
	brew install zsh-lovers

install-pip:
	pip install ipython
	pip install numpy
	pip install pandas
