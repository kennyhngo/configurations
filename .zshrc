# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

alias gitrmbranch="git branch --merged main | grep -v '^\* main' | xargs -n 1 -r git branch -d"
alias unzip='f() { tar -xvzf ./$1 };f'
alias wgetgitignore="wget https://raw.githubusercontent.com/kennyhngo/project-setup/main/.gitignore"
alias sshi='f() { ssh -i $1 ubuntu@$2 };f'

# Customizations
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
alias ls='colorls --dark --sd --gs'
alias lsx='arch -x86_64 ls'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
