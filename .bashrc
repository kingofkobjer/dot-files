# Enable programmable completion features.
if [ -f /etc/bash_completion  ]; then
    source /etc/bash_completion
fi
# Set the PS1 prompt (with colors).
# Based on http://www-128.ibm.com/developerworks/linux/library/l-tip-prompt/
# And http://networking.ringofsaturn.com/Unix/Bash-prompts.php .
PS1='"\[\e[1;34m\]\w\[\e[1;35m\]$(__git_ps1 "(%s)")\[\e[0m\]\$"'
# Set the default editor to vim.
export EDITOR=vim
# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups
# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend
# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'
# Add bash aliases.
if [ -f ~/.bash_aliases  ]; then
     source ~/.bash_aliases
fi
#
export PATH=~/bin:~/.local/.bin:~/Android/Sdk/platform-tools:$PATH
