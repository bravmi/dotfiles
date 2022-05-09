
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
	echo ...

install-git:
	rm -f ~/.gitignore
	ln -s `pwd`/git/gitignore ~/.gitignore

test:
	echo $$ZSH

install-brew:
	# formulae:
	brew install asdf
	brew install micro
	brew install pyenv
	brew install the_silver_searcher
	brew install tig
	brew install tldr
	brew install tmux
	brew install zsh-lovers
	brew install htop
	brew install go
	brew install direnv
	brew install duf
	brew install fzf
	brew install bat
	brew install ctop
	# casks:
	brew install brave-browser
	brew install docker
	brew install google-chrome
	brew install iterm2
	brew install rectangle
	brew install slack
	brew install tunnelblick
	brew install visual-studio-code
	brew install silicon-info

install-pip:
	pip install ipython
