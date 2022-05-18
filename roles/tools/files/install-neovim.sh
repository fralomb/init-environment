#!/usr/bin/bash
set -e

HOME="$1"
TARGET="$2"

[[ -z "$HOME" ]] && echo "Missing home path." && exit 1
[[ -z "$TARGET" ]] && echo "Missing target path." && exit 1

## install prerequisites
#apt-get update
#apt-get install	-y 	ninja-build	\
#			gettext		\
#			libtool		\
#			libtool-bin	\
#			autoconf	\
#			automake	\
#			cmake		\
#			g++		\
#			pkg-config	\
#			unzip		\
#			curl		\
#			doxygen

# clone neovim
ssh-keygen -F github.com || ssh-keyscan github.com >> $HOME/.ssh/known_hosts
git clone https://github.com/neovim/neovim $TARGET/neovim

# build stable version
cd $TARGET/neovim
git checkout stable
make -j4

# install to default location `/usr/local`
make CMAKE_BUILD_TYPE=Release
make install
