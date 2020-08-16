DIR := ${CURDIR}

install-nvim:
	mkdir -p ~/.config
	ln -s ${DIR}/nvim  ~/.config/nvim
