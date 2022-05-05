
install:
	install-myprofile \
	install-zsh \
	install-zsh-plugins \
	install-tmux

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

install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux.conf ~/.tmux.conf

install-ipython:
	echo ...

test:
	echo $$ZSH_CUSTOM

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
	# casks:
	brew install brave-browser
	brew install docker
	brew install google-chrome
	brew install iterm2
	brew install rectangle
	brew install slack
	brew install tunnelblick
	brew install visual-studio-code
