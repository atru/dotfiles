# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train" # https://github.com/atru/bullet-train.zsh

BULLETTRAIN_PROMPT_ORDER=(
  time
  context
  dir
  git
  status
  cmd_exec_time
)

BULLETTRAIN_PROMPT_CHAR=""
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_STATUS_EXIT_SHOW=true

BULLETTRAIN_TIME_BG=black
BULLETTRAIN_TIME_FG=default
BULLETTRAIN_EXEC_TIME_BG=blue
BULLETTRAIN_EXEC_TIME_FG=black
BULLETTRAIN_STATUS_FG=black
BULLETTRAIN_DIR_FG=black

BULLETTRAIN_GIT_COLORIZE_DIRTY=true
BULLETTRAIN_GIT_BG=green
BULLETTRAIN_GIT_MODIFIED="  " #icons require font PragmataPro Regular
BULLETTRAIN_GIT_DELETED="  "
BULLETTRAIN_GIT_ADDED="  "
BULLETTRAIN_GIT_UNTRACKED="  "
BULLETTRAIN_GIT_CLEAN="" #hide check mark, because green background says it all
BULLETTRAIN_GIT_DIRTY="" #hide error mark, because yellow bg + status icons

#SEGMENT_SEPARATOR=""  #classic powerline
#SEGMENT_SEPARATOR=" " #scrape
#SEGMENT_SEPARATOR=" " #fire
SEGMENT_SEPARATOR=" " #digital decay, best imho

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



function ml() {
   lynx -cookies=off "https://www.multitran.com/m.exe?CL=1\&s=$1\&l1=1\&l2=2"
}
function m() {
   addr="$(python -c "import urllib;print urllib.quote(\"$1\")")"
   elinks "https://www.multitran.com/m.exe?CL=1\&s=$addr\&l1=1\&l2=2"
}

HISTFILE=~/.zsh_history
SAVEHIST=500000
HISTSIZE=500000 
HIST_STAMPS="dd.mm.yyyy"

setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt hist_ignore_all_dups

# Compose bin path
if [ -d "$HOME/.config/composer/vendor/bin" ] ; then
  PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

# Custom configs
export CUSTOM_CONFIGS_DIR=$HOME/.config/zsh

. $CUSTOM_CONFIGS_DIR/dir-colors.zsh
. $CUSTOM_CONFIGS_DIR/completion-settings.zsh
. $CUSTOM_CONFIGS_DIR/aliases.zsh

# system-specific aliases
if [ -f "$CUSTOM_CONFIGS_DIR/custom-aliases.zsh" ] ; then
  . $CUSTOM_CONFIGS_DIR/custom-aliases.zsh
fi

# Created by `pipx` on 2021-05-06 15:08:01
export PATH="$PATH:/home/doozer/.local/bin"
