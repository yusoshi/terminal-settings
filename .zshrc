autoload -U colors
colors
case ${UID} in
0)
PROMPT="%{${fg[yellow]}%}[%n@%m]%#%{${fg[default]}%} "
RPROMPT=' %~'     # prompt for right side of screen
;;
*)
PROMPT="%{${fg[cyan]}%}[%n@]$ %{${fg[default]}%}"
RPROMPT=' %~'     # prompt for right side of screen
;;
esac
#補完
autoload -U compinit
compinit
# コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

#ディレクトリ
# ディレクトリ名を入力するだけで移動
setopt auto_cd
