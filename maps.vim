"
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>
"
noremap j h
noremap i k
noremap k j

noremap I 5k
noremap K 5j
noremap J 7h
noremap L 7l
" N key: go to the start of the line
noremap <C-n> 0
" I key: go to the end of the line
noremap <C-i> $

noremap m i
noremap M I
noremap b u

noremap <LEADER><CR> :nohlsearch<CR>

"map s <nop>
map S :w<CR>
map Q :q<CR>
map E :source $MYVIMRC<CR>
map ; :

" Spell check
noremap sp :set spell!<CR>

" fanyi
let g:translator_default_engines=['google','youdao']
noremap <LEADER>r :TranslateW<CR>
noremap <LEADER>f :TranslateR<CR>

" fzf.vim
nnoremap <c-f> :FZF<CR>
noremap F :Rg<CR>
noremap <c-a> :Ag<CR>
noremap <c-h> :History<CR>
noremap <leader>h :History:<CR>

"nnoremap <c-f> :Leaderf file<CR>

" 分屏
map sj :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map si :set splitbelow<CR>:split<CR>

map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l
map <LEADER>k <C-w>j

" 分屏大小
map <up> :res +3<CR>
map <down> :res -3<CR>
map <left> :vertical resize-3<CR>
map <right> :vertical resize+3<CR>

" 标签切换
map tp :tabe<CR>
map t- :tabprevious<CR>
map t= :tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

map <silent> <M-p> :cp<CR>
map <silent> <M-n> :cn<CR>
