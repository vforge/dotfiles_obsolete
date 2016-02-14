
all: install

install:
	cp gitconfig ~/.gitconfig
	cp gitignore_global ~/.gitignore_global

	rm -rf ~/.config/nvim
	mkdir ~/.config/nvim
	cp nvim/init.vim ~/.config/nvim/init.vim
