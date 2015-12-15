#vim

###使用
git clone https://github.com/zxl200406/vimrc.git ~/zsh_home   
cd ~/zsh_home   
然后执行sh install.sh
安装autojump，python install.py   
查看目录   
chsh -l   
chsh -s /bin/zsh

###macos
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


>需要注意的是，安装过程非常缓慢，原因是因为YouCompleteMe插件,这个插件需要编译   
>另外需要注意的vim --version 必须支持lua  python ruby等选择，不然无法使用一些插件



###vim编译安装
/configure --prefix=/usr/local/vim74 --with-features=huge --enable-pythoninterp --enable-perlinterp --enable-rubyinterp --enable-luainterp --enable-multibyte --enable-sniff --enable-fontset --with-features=huge --enable-pythoninterp --enable-perlinterp --enable-rubyinterp --enable-luainterp --enable-multibyte --enable-sniff --enable-cscope   

需要重新配置可输入 make distclean ,清理一下上一次编译生成的所有文件,<font color=red>其中参数说明如下</font>：

* --prefix=/usr/local/vim74:编译安装路åneocomplete_start_auto_complete)¾
* --with-features=huge：支持最大特性
* --enable-pythoninterp：启用Vim对python编写的插件的支持
* --enable-perlinterp：启用Vim对perl编写的插件的支持
* --enable-rubyinterp：启用Vim对ruby编写的插件的支持
* --enable-luainterp：启用Vim对lua编写的插件的支持
* --enable-multibyte：多字节支持 可以在Vim中输入中文
* --enable-sniff：Vim状态提示 提示Vim当前处于INSERT、NORMAL、VISUAL哪种模式
* --enable-cscope：Vim对cscope支持
* --enable-gui=gtk2：gtk2支持,也可以使用gnome，表示生成gvim

>一般情况下并不需要开启gui，不需要gvim的支持，所以直接去掉

make && make install

###vim编译安装
/configure --prefix=/usr/local/vim74 --with-features=huge --enable-pythoninterp --enable-perlinterp --enable-rubyinterp --enable-luainterp --enable-multibyte --enable-sniff --enable-fontset --with-features=huge --enable-pythoninterp --enable-perlinterp --enable-rubyinterp --enable-luainterp --enable-multibyte --enable-sniff --enable-cscope   

需要重新配置可输入 make distclean ,清理一下上一次编译生成的所有文件,<font color=red>其中参数说明如下</font>：

* --prefix=/usr/local/vim74:编译安装路径
* --with-features=huge：支持最大特性
* --enable-pythoninterp：启用Vim对python编写的插件的支持
* --enable-perlinterp：启用Vim对perl编写的插件的支持
* --enable-rubyinterp：启用Vim对ruby编写的插件的支持
* --enable-luainterp：启用Vim对lua编写的插件的支持
* --enable-multibyte：多字节支持 可以在Vim中输入中文
* --enable-sniff：Vim状态提示 提示Vim当前处于INSERT、NORMAL、VISUAL哪种模式
* --enable-cscope：Vim对cscope支持
* --enable-gui=gtk2：gtk2支持,也可以使用gnome，表示生成gvim

>一般情况下并不需要开启gui，不需要gvim的支持，所以直接去掉

make && make install


###编译安装python 
python的安装由其重要，YouCompleteMe在编译的时候，需要python的支持
>执行./configure --enable-shared CFLAGS=-fPIC  #--enable-shared CFLAGS=-fPIC 不能省。。必须存在 
  
如果执行python  libpython2.7.so.1.0的错误时的 解决办法：
vim /etc/ld.so.conf 添加/usr/local/python根目录/lib
然后分别执行以下命令即可

- /sbin/ldconfig
- /sbin/ldconfig -v

###编译安装clang
在mac上面，直接brew install clang    

编译安装

- Get the required tools.
http://llvm.org/docs/GettingStarted.html#requirements- See [Getting Started with the LLVM System - Requirements.](http://clang.llvm.org/get_started.html)
- Note also that Python is needed for running the test suite. Get it at: http://www.python.org/download
- Standard build process uses CMake. Get it at: http://www.cmake.org/download

Checkout LLVM:

- Change directory to where you want the llvm directory placed.
- svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm

Checkout Clang:

- cd llvm/tools
- svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
- cd ../..

Checkout extra Clang Tools: (optional)

- cd llvm/tools/clang/tools
- svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra
- cd ../../../..

Checkout Compiler-RT:

- cd llvm/projects
- svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt
- cd ../..

Checkout libcxx: (only required to build and run Compiler-RT tests on OS X, optional otherwise)

- cd llvm/projects
- svn co http://llvm.org/svn/llvm-project/libcxx/trunk libcxx
- cd ../..

Build LLVM and Clang:

- mkdir build (in-tree build is not supported)
- cd build
- cmake -G "Unix Makefiles" ../llvm
- make
This builds both LLVM and Clang for debug mode.

###编译安装YouCompleteMe
安装之前，必须安装cmake
>cmake的版本，必须要高于xxx，具体多少我忘了，但是直接从cmake官方下载最新的cmake包，即可

最终执行： ./install.sh --clang-completer --system-libclang  --omnisharp-completer  --gocode-completer  剩下的就是等待了


