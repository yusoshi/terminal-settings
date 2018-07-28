autoload -U colors
colors
case ${UID} in
0)
PROMPT="%{${fg[yellow]}%}[%n@%m]%#%{${fg[default]}%} "
RPROMPT=' %~'     # prompt for right side of screen
;;
*)
PROMPT="%{${fg[cyan]}%}[%n@]# %{${fg[default]}%}"
RPROMPT=' %~'     # prompt for right side of screen
;;
esac
#補完
autoload -U compinit
compinit
# historyを共有
setopt share_history
