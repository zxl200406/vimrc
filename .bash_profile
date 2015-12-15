
export goroot=/users/zhouxiaolong/documents/go #自己替换go目录
export goarch=amd64
export goos=darwin
export path=$goroot/bin:$path
export gopath=/users/zhouxiaolong/documents/gopath  #根据自己的go工作目录替换
export gobin=$goroot/bin
export path=$gobin:$path

export m2_home=/users/zhouxiaolong/apache-maven-3.3.3
export PATH=$PATH:$M2_HOME/bin


export PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p%{$fg[cyan]%}%d %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}~'


