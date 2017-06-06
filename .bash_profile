export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"
export PATH="/Users/bsayler/thoughtworks/twu55team3/db/migrations/mybatis/bin:$PATH"

PS1='\u@\h:\w [$?]\$ '

alias migrate="migrate --path=./db/migrations"

# Source chruby stuff
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

export JAVA_HOME=$(/usr/libexec/java_home –v 1.8)

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh 
