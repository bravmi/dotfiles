
install:
	install-myprofile \
	install-zsh \
	install-zsh-plugins \
	install-git

install-myprofile:
	rm -f ~/.myprofile
	ln -s `pwd`/myprofile ~/.myprofile

install-zsh:
	rm -f ~/.zshrc
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	rm -f ~/.oh-my-zsh/custom/themes
	ln -s `pwd`/zsh/custom/themes/ ~/.oh-my-zsh/custom/themes

install-zsh-plugins:
	cd $${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ && \
    git -C zsh-autosuggestions pull || git clone https://github.com/zsh-users/zsh-autosuggestions zsh-autosuggestions

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
	# casks:
	brew install brave-browser
	brew install docker
	brew install google-chrome
	brew install iterm2
	brew install rectangle
	brew install slack
	brew install tunnelblick
	brew install visual-studio-code
