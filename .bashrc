alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vi='vim'


alias  domestic='ssh zhouxiaolong@op.kisops.com'
alias  domestic1='ssh zhouxiaolong@op.kisops.com -p 65201'
alias  overseas='cmcm;ssh zhouxiaolong@op.liebaopay.com'


export JAVA_OPTS="-server -Xms256m -Xmx1024m -XX:MaxNewSize=256m -XX:PermSize=64M -XX:MaxPermSize=128M"
export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=512m"


export GOROOT=/Users/zhouxiaolong/go #自己替换Go目录
export GOARCH=amd64
export GOOS=darwin
export PATH=$GOROOT/bin:$PATH
export GOPATH=/Users/zhouxiaolong/gopath #根据自己的Go工作目录替换
export GOBIN=$GOROOT/bin
export PATH=$GOBIN:$PATH 
