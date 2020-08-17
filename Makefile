DIR := ${CURDIR}

install-nvim:
	mkdir -p ~/.config
	ln -s ${DIR}/nvim  ~/.config/nvim

install-tmux:
	ln -s ${DIR}/tmux/.tmux.conf  ~/.tmux.conf
