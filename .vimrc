set nocompatible
syntax enable
syntax on
set expandtab
set tabstop=4
set shiftwidth=4

set ai
set nu

set cursorline	"光标所在位置加下划线
set showmatch	"代码匹配
set laststatus=2

set bs=2 "insert模式下退格键删除

set autoread
set ignorecase
set foldmethod=syntax

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

" 文件编码配置"
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fenc=utf-8
set autoindent

"set relativenumber

"插入模式下移动
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-h> <left>

"取消粘贴缩进
nmap <leader>p :set paste<CR>
nmap <leader>pp :set nopaste<CR>


""""
" 插件配置"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype off

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" vim-scripts repos
Bundle 'coffee.vim'
Bundle 'vim-coffee-script'

"相较于Command-T等查找文件的插件，ctrlp.vim最大的好处在于没有依赖，干净利落
Bundle 'ctrlp.vim'
"在输入()，""等需要配对的符号时，自动帮你补全剩余半个
""Bundle 'AutoClose'
"神级插件，ZenCoding可以让你以一种神奇而无比爽快的感觉写HTML、CSS
Bundle 'ZenCoding.vim'
"在()、""、甚至HTML标签之间快速跳转；
Bundle 'matchit.zip'
"显示行末的空格；
Bundle 'ShowTrailingWhitespace'
"JS代码格式化插件；
Bundle '_jsbeautify'
"用全新的方式在文档中高效的移动光标，革命性的突破
Bundle 'EasyMotion'
"自动识别文件编码；
Bundle 'FencView.vim'
"必不可少，在VIM的编辑窗口树状显示文件目录
Bundle 'The-NERD-tree'
"NERD出品的快速给代码加注释插件，选中，`ctrl+h`即可注释多种语言代码；
Bundle 'The-NERD-Commenter'
"解放生产力的神器，简单配置，就可以按照自己的风格快速输入大段代码。
Bundle 'UltiSnips'
"让代码更加易于纵向排版，以=或,符号对齐
Bundle 'Tabular'
"迄今位置最好的自动VIM自动补全插件了吧
"Vundle的这个写法，是直接取该插件在Github上的repo
"Bundle 'Valloric/YouCompleteMe'

Bundle 'taglist.vim'
Bundle 'taglist-plus'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

Bundle 'winmanager'
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" buffer 管理，<C-Tab> <C-S-Tab>循环切换 
Bundle 'minibufexpl.vim'
let g:miniBufExplMapCTabSwitchBufs=1


filetype plugin indent on 
