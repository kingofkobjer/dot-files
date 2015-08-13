if [ -f /etc/bash_completion  ]; then
    source /etc/bash_completion
fi
export EDITOR=vim
export HISTCONTROL=ignoredups
shopt -s histappend
PROMPT_COMMAND='history -a'
if [ -f ~/.bash_aliases  ]; then
     source ~/.bash_aliases
fi
GIT_PROMPT_ONLY_IN_REPO=1
# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
# GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...      # uncomment for custom prompt end sequence
# as last entry source the gitprompt script
# GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
# GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
source ~/.bash-git-prompt/gitprompt.sh
