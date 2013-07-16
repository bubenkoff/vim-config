setup_dir=`pwd`

# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -o ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim


# Update all vim's bandels
cd ~/.vim/bundle
for bundle in `ls`
do
	cd $bundle
	echo Update $bundle
	git pull
	cd ..
done
cd $setup_dir

# Setup fugitive
cd ~/.vim/bundle
if ! [ -d "vim-fugitive" ]
then
	git clone git://github.com/tpope/vim-fugitive.git
fi
cd $setup_dir

# Setup snipmate
cd ~/.vim/bundle
if ! [ -d "snipmate" ]
then
	git clone git://github.com/msanders/snipmate.vim.git snipmate
fi
cd $setup_dir

# Setup VCScommand (git, svn, cvs)
cd ~/.vim/bundle
if ! [ -d "vcscommand" ]
then
	git clone git://github.com/vim-scripts/vcscommand.vim.git vcscommand
fi
cd $setup_dir

# SOLARIZED COLORSCHEME FOR VIM
cd ~/.vim/bundle
if ! [ -d "vim-colors-solarized" ]
then
	git clone git://github.com/altercation/vim-colors-solarized.git vim-colors-solarized
fi

# setup ctrlp
cd ~/.vim/bundle
if ! [ -d "vim-ctrlp" ]
then
   git clone https://github.com/kien/ctrlp.vim.git vim-ctrlp
fi

# setup nerdtree
cd ~/.vim/bundle
if ! [ -d "vim-nerdtree" ]
then
    git clone https://github.com/scrooloose/nerdtree vim-nerdtree
fi

# setup nerdtree-tabs
cd ~/.vim/bundle
if ! [ -d "vim-nerdtree-tabs" ]
then
    git clone https://github.com/jistr/vim-nerdtree-tabs.git vim-nerdtree-tabs
fi

# setup vim-screen
cd ~/.vim/bundle
if ! [ -d "vim-screen" ]
then
    git clone https://github.com/ervandew/screen.git vim-screen
fi

# Set vimrc
ln -sf $setup_dir/vimrc $HOME/.vimrc
