DIR := ${CURDIR}

install-nvim:
	mkdir -p ~/.config
	ln -s ${DIR}/nvim  ~/.config/nvim

install-tmux:
	ln -s ${DIR}/tmux/.tmux.conf  ~/.tmux.conf

install-zsh:
	ln -s ${DIR}/zsh/.zshrc  ~/.zshrc
	ln -s ${DIR}/zsh/.p10k.zsh  ~/.p10k.zsh

