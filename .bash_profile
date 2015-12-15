export GOROOT=/users/zhouxiaolong/documents/go #自己替换go目录
export GOARCH=amd64
export GOOS=darwin
export PATH=$GOROOT/bin:$PATH
export GOPATH=/users/zhouxiaolong/documents/gopath  #根据自己的go工作目录替换
export GOBIN=$GOROOT/bin
export PATH=$GOBIN:$PATH

export m2_home=/users/zhouxiaolong/apache-maven-3.3.3
export PATH=$PATH:$M2_HOME/bin


export PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p%{$fg[cyan]%}%d %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}~'


