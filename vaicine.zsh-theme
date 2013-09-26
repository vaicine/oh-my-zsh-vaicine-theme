#RVM settings
if [[ -s ~/.rvm/scripts/rvm ]] ; then 
  RPS1="%{$fg[yellow]%}rvm:%{$reset_color%}%{$fg[red]%}\$(~/.rvm/bin/rvm-prompt)%{$reset_color%} $EPS1"
else
  if which rbenv &> /dev/null; then
    RPS1="%{$fg[yellow]%}rbenv:%{$reset_color%}%{$fg[red]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$reset_color%} $EPS1"
  fi
fi

#PROMPT settings

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[blue]%}(%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ❤%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg[green]%}▾%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg[green]%}▴%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg[green]%}▾▴%{$fg[blue]%}"

PROMPT='%{$fg[magenta]%}%*%{$reset_color%} » %{$fg[green]%}%c%{$reset_color%}%{$fg[black]%}$(git_prompt_info)$(git_remote_status))%{$reset_color%} %(!.#.$) '