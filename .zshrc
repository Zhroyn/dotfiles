if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"


plugins=(
    git
    sudo
    extract
    copypath
    copyfile
    copybuffer
    you-should-use
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-history-substring-search
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down


# Use modern completion system
autoload -Uz compinit
compinit

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:git:*' list-colors '=(#b) #([0-9]#)*=0=01;34'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/zhenghaoren/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/zhenghaoren/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/zhenghaoren/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/zhenghaoren/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup


alias zshconfig="source ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"
alias cdtr="cd ~/repositories"
alias cdtt="cd ~/repositories/test"

alias path='echo -e $PATH//:/\\n'
alias mkcl='make clean'
alias py='python3'
alias ac='conda activate'
alias updatedb='sudo updatedb --localpaths="/bin /dev /lib /run /srv /var /boot /etc /init /lib64 /media /opt /root /sbin /sys /usr /home"'
alias search_alias='alias | grep'

alias tm='tmux'
alias tmk='tmux kill-session'
alias tms='tmux new -s'
alias tma='tmux a'

alias ise='source /opt/Xilinx/14.7/ISE_DS/settings64.sh && ise'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
