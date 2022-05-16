# init-environment
An Ansible playbook to install/uninstall easily all the needed tools in a fresh environment

## Generate ssh key for github
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

## TODO:
- install ansible
- install docker
- install docker compose
- install aws cli
- install terraform cli
- install nvim/vim
  - install all the needed dependencies
- install kitty
- install kubernetes
- install zsh

# Docker 
Installation [steps](https://docs.docker.com/engine/install/ubuntu/) for ubuntu

# Kitty
Documentation [HERE](https://sw.kovidgoyal.net/kitty/overview)

Kitty looks for a config file in the OS config directories (usually `~/.config/kitty/kitty.conf`) but you can pass a specific path via the kitty `--config` option or use the `KITTY_CONFIG_DIRECTORY` environment variable.

# Neovim
1. Install [requirements](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites)
2. `git clone https://github.com/neovim/neovim`
3. `cd neovim && git checkout stable && make -j4`
4. `sudo make install` => Default install location in `/user/local`
