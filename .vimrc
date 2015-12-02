set nocompatible              " be iMproved
set nu
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

"vim插件管理
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'fatih/vim-go'
Bundle 'Valloric/YouCompleteMe'
Bundle 'jistr/vim-nerdtree-tabs.git'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree.git'
Bundle 'vim-scripts/AutoClose'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'tpope/vim-surround'
Bundle 'davidhalter/jedi-vim'
Bundle 'hyiltiz/vim-plugins-profile'
Bundle 'tpope/vim-commentary'


call vundle#end()            " required
filetyp plugin indent on     " required!


" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

syntax enable
syntax on

let mapleader=","

"go相关的配置
let g:fencview_autodetect=1
let g:go_disable_autoinstall = 0
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:godef_split=3
au BufRead,BufNewFile *.go set filetype=go


"全局设置
set shell=/bin/bash
set wildmenu
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set hlsearch
set mouse=a
set cuc cul  "这个就是十字架
set incsearch
set autoindent
set smartindent
set showmatch
set ruler
set wrap
set expandtab
set softtabstop=4
set shiftwidth=4
set ignorecase "大小写敏感
setlocal noswapfile 
set bufhidden=hide 
set gcr=a:block-blinkon0 "禁止光标闪烁
set guioptions-=l "禁止显示滚动条
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=m "禁止工具栏`
set guioptions-=T 
"
"颜色方案 
"https://github.com/tomasr/molokai/
"文件放到~/.vim/colors/molokai.vim
colorscheme  molokai
set t_Co=256  
let g:molokai_original = 1
let g:rehash256 = 1


" 设置NerdTree
map <C-n> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree
""let NERDChristmasTree=1
""let NERDTreeAutoCenter=1
""let NERDTreeMouseMode=2
""let NERDTreeShowFiles=1
""let NERDTreeShowHidden=1
""let NERDTreeShowLineNumbers=1
""let NERDTreeWinPos='left'
""let NERDTreeWinSize=31
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.swp','\.pyc', '\.mod\.c', '\.o', '\.ko', '\.a', '\.so', 'CMakeFiles', '\.cmake', 'CMakeCache.txt']
"}}}

"开启语法检查

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"


let g:syntastic_check_on_open = 1  
let g:syntastic_cpp_include_dirs = ['/usr/include/','/usr/local/include']  
let g:syntastic_cpp_remove_include_errors = 1  
let g:syntastic_cpp_check_header = 1  
let g:syntastic_cpp_compiler = 'clang++'  
let g:syntastic_error_symbol = 'x'  
let g:syntastic_warning_symbol = '!'  
let g:syntastic_enable_balloons = 1  
" YCM config
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0      "关闭加载.ycm_extra_conf.py提示
let g:ycm_complete_in_comments = 1    "在注释输入中也能补全
let g:ycm_complete_in_strings = 1     "在字符串输入中也能补全
let g:ycm_seed_identifiers_with_syntax = 1                  " 语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
inoremap <leader>; <C-x><C-o>
nnoremap <leader>gh :YcmCompleter GoToDeclaration<CR>
inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
inoremap <expr> <C-J>      pumvisible()?"\<PageDown>\<C-N>\<C-P>":"\<C-X><C-O>"
inoremap <expr> <C-K>      pumvisible()?"\<PageUp>\<C-P>\<C-N>":"\<C-K>"
inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>" 
nmap <F5> :YcmDiags<CR>


inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
nmap <leader>p :set paste<CR>
nmap <leader>pp :set nopaste<CR>
inoremap <c-e> <right>
inoremap <c-w> <left>

nnoremap nw <C-W><C-W>
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

nnoremap <Leader>hw <C-W>h
" 跳转至右方的窗口"
nnoremap <Leader>rr <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>ll <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>tt <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>dd <C-W>j

"这里很重要，因为不能复制，只能通过快捷键才能复制数据
"从外面把数据copy到vim直接leader v
"从vim把数据copy到剪贴板，在v模式下选中,leader +c
nmap <leader>v "+gp
vmap <leader>c "+y
""

nmap <Leader>q :q!<CR>
nmap <Leader>w :w!<CR>
nmap <Leader>wq :wq!<CR>
nmap <Leader>pa %
imap <leader>jj <ESC>

" python 的配置,其它都删除了，就这二个有用
let g:jedi#goto_command = "<leader>gdp"
autocmd FileType python set omnifunc=pythoncomplete#Complete   
"自动添加文件头
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "#coding=utf-8")
    call append(2, "#author :zhouxiaolong")
    call append(3, "#" . strftime('%Y-%m-%d %T', localtime()))
    normal G
    normal o
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

map <Leader><Leader>d <Plug>(easymotion-j)
map <Leader><Leader>t <Plug>(easymotion-k)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion



" vim-surround
nmap <Leader>sl yss
nmap <Leader>sw ysiw
nmap <Leader>sr cs 
nmap <Leader>sdl ds 


"Visual 模式下 gc 命令可以注释选中的行
"普通模式下 gcc 指令可以快速注释一行
"gcu可以撤销注释
autocmd FileType python,shell set commentstring=#\ %s                 " 设置Python注释字符
autocmd FileType mako set cms=##\ %s"



