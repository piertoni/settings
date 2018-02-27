sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev git

# other packages
# ruby-dev lua5.1 lua5.1-dev libperl-dev git

sudo apt-get remove --purge vim vim-runtime gvim \
    vim-tiny vim-common vim-gui-common vim-nox

sudo rm -rf /usr/local/share/vim /usr/bin/vim

cd ~
git clone https://github.com/vim/vim.git
cd vim
git pull && git fetch
cd src
make distclean
cd ..

./configure --with-features=huge \
            --enable-multibyte \
            --enable-python3interp=dynamic \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-gui=auto \
            --enable-cscope \
            --prefix=/usr/local \
	        --with-compiledby="piertoni" \
	        --enable-fail-if-missing

make VIMRUNTIMEDIR=/usr/local/share/vim/vim80

# to uninstall easily
sudo apt install checkinstall
cd ~/vim
sudo checkinstall

# Set vim as your default editor with update-alternatives
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim

# remove with dpkg -r vim
