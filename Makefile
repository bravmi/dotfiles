install: install-zsh


install-zsh:
	rm -f ~/.zshrc
	ln -s `pwd`/zsh/zshrc ~/.zshrc
	ln -s `pwd`/zsh/custom/themes/ ~/.oh-my-zsh/custom/themes/

install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux.conf ~/.tmux.conf
