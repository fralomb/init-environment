#!/bin/bash

# install prerequisites
sudo apt-get install	ninja-build	\
			gettext		\
			libtool		\
			libtool-bin	\
			autoconf	\
			automake	\
			cmake		\
			g++		\
			pkg-config	\
			unzip		\
			curl		\
			doxygen

# clone neovim
git clone https://github.com/neovim/neovim

# build stable version
cd neovim
git checkout stable
make -j4

# install to default location `/usr/local`
make CMAKE_BUILD_TYPE=Release
sudo make install
