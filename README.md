# dotfiles

This is my dotfiles for the configuration of `bash`, which are expected to include `vim`, `tmux`, `zsh` .etc in the future


#### Installaion

To automatically create symlinks of dotfiles in the `~` directory, so as to keep all the dotfiles in one git repository to manage, you can firstly:
```shell
cd path/to/dotfiles
```
and then:
```shell
source symlink_dotfiles.sh
```
**Notes:**
- If there are dotfiles with the same name such as `.bashrc` already existing in the `~` directory, then these dotfiles will be backed up in `~/dotfiles_backup`, then our dotfiles will continue creating symlinks.
- If there are not, then `~/dotfiles_backup` will not appear after the execution
