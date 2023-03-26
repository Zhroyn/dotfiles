# dotfiles

By keeping all the dotfiles in one git repository, and automatically creating their symlinks in the `~` directory, we can easily manage messy configuration files in a neat and elegant way.

This is my dotfiles for the configuration in Linux, which will possibly include `bash`, `vim`, `tmux`, `zsh` .etc, in the future.

#### Usage

You can use `symlink_dotfiles.sh` to automatically create symlinks of all the dotfiles in the directory `dotfiles`.
First, it's need to change directory to `dotfiles`, which can be done by:
```shell
cd path/to/dotfiles
```
and then run the script by:
```shell
source symlink_dotfiles.sh
```
**Warning**
- This script will not save a copy for dotfiles already existing in `~`, and will automatically remove them
