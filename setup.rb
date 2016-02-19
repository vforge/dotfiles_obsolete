#!/usr/bin/env ruby
require './.setup/dotfiles'

Dotfiles.file 'gitconfig'
Dotfiles.file 'gitignore_global'
Dotfiles.clear_dir 'nvim'
