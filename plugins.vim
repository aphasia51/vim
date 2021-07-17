
" ****插件****
call plug#begin('~/.config/nvim/plugged')

" 美化
Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'
Plug 'dracula/vim'
""Plug 'vim-airline/vim-airline-themes'
"Plug 'bling/vim-bufferline'
"Plug 'bpietravalle/vim-bolt'
""Plug 'connorholyday/vim-snazzy'
"Plug 'theniceboy/vim-deus'
Plug 'ryanoasis/vim-devicons'

" airline 依赖
"Plug 'tpope/vim-fugitive'
" gitgutter

" Pretty Dress
Plug 'theniceboy/vim-deus'
"Plug 'arzg/vim-colors-xcode'

" Status line
"Plug 'theniceboy/eleline.vim'
Plug 'ojroques/vim-scrollstatus'

" 浮动终端
Plug 'voldikss/vim-floaterm'

" 启动页
"Plug 'glepnir/dashboard-nvim'
" golang插件
"Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}    "{ 'for': ['go', 'vim-plug'], 'tag': '*' }

" snippets
Plug 'theniceboy/vim-snippets'


" fzf插件
"Plug 'liuchengxu/vim-clap'

" 翻译
Plug 'voldikss/vim-translator'


" 显示git diff
"Plug 'airblade/vim-gitgutter'


" 补全括号，彩虹括号
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
" 顶部状态栏
Plug 'mg979/vim-xtabline'

" Error checking
Plug 'w0rp/ale'


" 缩进高亮
Plug 'nathanaelkane/vim-indent-guides'

" 当前单词下划线
Plug 'itchyny/vim-cursorword'


" Python缩进
Plug 'vim-scripts/indentpython.vim'

" vim的个人wiki插件
Plug 'vimwiki/vimwiki'

" 标记位置
Plug 'kshenoy/vim-signature'

" 宏操作
Plug 'terryma/vim-multiple-cursors'

" 选中区域插入
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
" 对齐
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
" 选择最近的文本对象
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip

" 快速注释
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'fadein/vim-FIGlet'

" nerdtree
Plug 'preservim/nerdtree'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'prabirshrestha/vim-lsp'
call plug#end()
