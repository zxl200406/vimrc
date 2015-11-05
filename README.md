#vim支持golang自动补全功能(mac)
如果在mac上面已经安装了vim或macvim,请先卸载掉   
* brew uninstall vim
* brew uninstall macvim

然后执行

- `brew install macvim --with-cscope --with-lua --HEAD`
- `brew install vim --with-lua`

###先安装cmake
由于要安装一个自动补全的插件，需要安装Valloric/YouCompleteMe，需要手工编译，需要cmake的支持
   
* brew install cmake


###安装vundle
- cd ~
- git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle  
- 下载https://github.com/tomasr/molokai/blob/master/colors/molokai.vim保存为~/.vim/colors/molakia.vim 这个配色方案
- 下载https://github.com/zxl200406/vimrc/blob/master/.vimrc保存为~/.vimrc
- 打开vim BundleInstall
- 安装过后报错，提示ycm_client_support.[so|pyd|dll] and ycm_core.[so|pyd|dll] not detected
- cd ~/.vim/bundle/YouCompleteMe 下 执行sh ./install.sh即可

>需要注意的是，安装过程非常缓慢，原因是因为YouCompleteMe插件.
