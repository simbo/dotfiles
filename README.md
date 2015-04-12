dotfiles
========

  > My dotfiles, managed via [homesick](https://github.com/technicalpickles/homesick).

### Installation

``` sh
# setup homesick
sudo gem install homesick

# install castle, symlink files
homesick clone simbo/dotfiles
homesick link dotfiles
```

### Management

``` sh
# add a file to castle (moves file and creates symlink)
homesick track <FILE> dotfiles

# open shell in castle directory
homesick cd dotfiles
```