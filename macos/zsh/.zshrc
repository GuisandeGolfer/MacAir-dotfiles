# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/opt/homebrew/Cellar/node/22.4.0/bin:$PATH"

export PATH="$(brew --prefix)/opt/python@3/libexec/bin:$PATH"
export PATH="/usr/local/Cellar/mpv/0.38.0_2/bin:$PATH"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export NVM_DIR="$HOME/.config/nvim"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # this loads nvm
# [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvim" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # this loads nvm bash_completion

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search pass)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
bindkey -v
alias ll="ls -la"

function cdls() {
  builtin cd "$@" && ll
}

alias cd="cdls"

# Editing config files or file paths.
alias karabiner="nvim /Users/diegoguisande/.config/karabiner/karabiner.json"
alias icloud="cd /Users/diegoguisande/Library/Mobile\ Documents/com~apple~CloudDoc"
alias obsidian="cd $HOME/Desktop/obsidian/"
alias desk="cd ~/Desktop/"
alias para="cd ~/Desktop/PARA/"
alias newalias="nvim ~/.zshrc"
alias dotfiles="nvim ~/.dotfiles"
alias whisper="~/Desktop/PARA/Projects_1/AI-text/whisper.cpp/"
# zk.config path: use with `bat`
zkpath="$HOME/.dotfiles/macos/zk/.zk/config.toml"
alias zkconfig="bat $zkpath"

alias ex="exit"
alias la="ll -a"
alias src="source ~/.zshrc"
alias cl="clear"
alias gits="git status"
alias gitadd="git add ."
alias gitcommit="git commit -m \$1"
alias push2gh="git push -u origin main"
alias pass="PASSWORD_STORE_ENABLE_EXTENSIONS=true PASSWORD_STORE_EXTENSIONS_DIR='/opt/homebrew/Cellar/pass-import/3.5' pass"


# Useful/Helpful Shell Commands
alias sizesort="du -sh * | sort -h"
alias showalias="'$HOME/show_alias.sh' | fzf"
alias old="history | fzf | cut -c8- | pbcop"
alias s="fd --type f --hidden --exclude .git | fzf-tmux --reverse -p | xargs -I {} nvim '{}'"
alias smv="fd --type f --type d --hidden --exclude .git . | fzf-tmux --reverse -p | xargs -I {} mv '{}' \$1"
alias datetime="$HOME/datetime.sh"
alias hidden="ls -a | grep '^\.'"
# alias fullgitpush="git add . && git commit -m \$1 && git push"
# alias fullgitpush='f(){ git add . && git commit -m "$*" && git push; }; f'

#
##
##
# Add‑everything → commit → push (with upstream auto‑set on first push)
function fullgitpush () {
  local msg="$1"; shift                       # first arg = commit message
  [[ -z "$msg" ]] && { echo "Usage: fullgitpush \"commit message\" [push args]"; return 1; }

  git add -A                                  # stage all changes
  if ! git diff --cached --quiet; then        # only commit when something changed
    git commit -m "$msg" || return            # stop if a hook aborts commit
  else
    echo "Nothing to commit."
  fi

  # Push; if branch lacks an upstream, set it automatically
  git push
}

#
##
##

# Script Aliases
alias stenog="python ~/Desktop/PARA/Projects_1/Programming/steganography/van-gonography/src/VanGonography.py" 

# turn youtube url into a RSS feed link.
function youtube_rss() {
    youtube_url=\$1
    echo "Processing YouTube URL: $youtube_url"
    # Add your logic here to process the YouTube URL
    curl -s "$youtube_url" | xmllint --html --xpath "string(//link[@title='RSS']/@href)" - 2>/dev/null
}
alias rss="youtube_rss"

function gptsum_func() {
    source ~/Desktop/PARA/Projects_1/youtube_summary_py/venv/bin/activate
    python3 ~/Desktop/PARA/Projects_1/youtube_summary_py/main.py
}
alias gptsum="gptsum_func"


# ENV variables for cs50 c compilation on Mac M1
# CC="clang"
# CFLAGS="-ferror-limit=1 -gdwarf-4 -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-gnu-folding-constant -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wno-unused-but-set-variable -Wshadow"
# LDLIBS="-lcrypt -lcs50 -lm"

#alias nhelp="nvim $HOME/.dotfiles/nvim/.config/nvim/lua/diegog/remap.lua"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pnpm
export PNPM_HOME="/Users/diegoguisande/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# bun completions
[ -s "/Users/diegoguisande/.bun/_bun" ] && source "/Users/diegoguisande/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

JUPYTER_PATH="/opt/homebrew/share/jupyter/"
JUPYTER_CONFIG_PATH="/opt/homebrew/etc/jupyter"

GOKU_EDN_CONFIG_FILE="~/.config/karabiner.edn"

source <(fzf --zsh)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/diegoguisande/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/diegoguisande/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/diegoguisande/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/diegoguisande/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Created by `pipx` on 2024-09-05 17:21:43
export PATH="$PATH:/Users/diegoguisande/.local/bin"

GPG_TTY=$(tty)
export GPG_TTY

source "$HOME/.cargo/env"

export OPENAI_API_KEY="$(pass show api/chatgpt)"

alias vim="nvim"
