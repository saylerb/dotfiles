export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"
export PATH="/Users/bsayler/thoughtworks/twu55team3/db/migrations/mybatis/bin:$PATH"

alias migrate="migrate --path=./db/migrations"

# Source chruby stuff
[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ] && source /usr/local/opt/chruby/share/chruby/chruby.sh
[ -f /usr/local/opt/chruby/share/chruby/auto.sh ] && source /usr/local/opt/chruby/share/chruby/auto.sh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh 
