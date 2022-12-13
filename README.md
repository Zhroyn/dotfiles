# dotfiles

By keeping all the dotfiles in one git repository and automatically creating symlinks of them in the `~` directory, you can easily manage all kinds of messy configuration files in a neat and elegant way.

This is my dotfiles for the configuration in Linux, which are expected to include `bash`, `vim`, `tmux`, `zsh` .etc in the future.

#### Installaion

To automatically creating symlinks of all the dotfiles in the `dotfiles` directory, you can firstly change directory to `dotfiles` by:
```shell
cd path/to/dotfiles
```
and then:
```shell
source symlink_dotfiles.sh
```
**Notes:**
- If there are dotfiles with the same name such as `.bashrc` already existing in the `~` directory, then these dotfiles will be moved to in `.../dotfiles/dotfiles_backup`, then our dotfiles will continue creating symlinks.
- If there are not, then `~/dotfiles_backup` will not appear after the execution
