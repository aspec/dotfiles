test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

# Make color constants available
autoload -U colors
colors

# Modify the prompt to contain git branch name
git_prompt_info() {
    current_branch=$(git current-branch 2> /dev/null)
    if [[ -n $current_branch ]]; then
        echo "%{$fg_bold[green]%}$current_branch%{$reset_color%}}"
    fi
}

setopt promptsubst

# Allow exported PS1 variable to override default prompt.
if ! env | grep -q '^PS1='; then
    PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '
fi

# Enable color support of ls and add aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias ll='ls -la --color=auto'
    alias la='ls -la --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
fi
