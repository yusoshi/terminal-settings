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

# 移動したディレクトリを記録しておく。"cd -[Tab]"で移動履歴を一覧
setopt auto_pushd

# opam configuration
test -r /Users/nishiyama/.opam/opam-init/init.zsh && . /Users/nishiyama/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
alias ocaml="rlwrap ocaml"
