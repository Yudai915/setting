# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

setopt PROMPT_SUBST
source ~/.git-prompt.sh

# git補完 詳細設定
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
# GIT_PS1_SHOWSTASHSTATE=1

#単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
#大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed

# cdを使わずにディレクトリを移動できる
setopt auto_cd
# "cd -"の段階でTabを押すと、ディレクトリの履歴が見れる
setopt auto_pushd
# コマンドの打ち間違いを指摘してくれる
setopt correct
