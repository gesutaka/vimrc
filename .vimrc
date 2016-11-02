set number
set cursorline
set clipboard+=unnamed
syntax on
set ambiwidth=double

" undoファイルは生成しない
set noundofile
" スワップファイル保存先変更
set directory=~/.vim/tmp
" バックアップファイル保存先変更
set backupdir=~/.vim/tmp

" IME自動ON無効
set iminsert=0
set imsearch=-1

" ステータス行にエンコードと改行コードを表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

set autoindent      " 自動インデント
set smartindent     " 自動インデント増減
set shiftwidth=4    " 自動インデントで挿入されるタブ幅
set expandtab       " インデントはスペース
set tabstop=4       " タブキー押したときのタブ幅
set softtabstop=4   " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set tw=0            " 自動改行無効

" grepしたら自動でquickfix-windowを開く
autocmd QuickFixCmdPost *grep* cwindow
set incsearch  " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase  " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch   " 検索結果をハイライト

nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

"xキー削除でデフォルトレジスタに入れない
nnoremap x "_x
vnoremap x "_x

"vvで行末まで選択
vnoremap v ^$h

"Ctrl-aで全選択
"nnoremap <C-a> gg<S-v><S-g>
"vnoremap <C-a> gg<S-v><S-g>

" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

"--------- Insert mode --------------------"
"Cntl-vでペースト
"inoremap <C-v> <Esc>p
" カーソル前の文字削除
inoremap <silent> <C-h> <C-g>u<C-h>
" カーソル後の文字削除
inoremap <silent> <C-d> <Del>
" カーソルから行頭まで削除
inoremap <silent> <C-d>0 <Esc>lc^
" カーソルから行末まで削除
inoremap <silent> <C-d>e <Esc>lc$
" カーソルから行頭までヤンク
inoremap <silent> <C-y>0 <Esc>ly0<Insert>
" カーソルから行末までヤンク
inoremap <silent> <C-y>e <Esc>ly$<Insert>

"タブ、空白、改行の表示
set list
set listchars=tab:>.,trail:_,eol:$,extends:>,precedes:<,nbsp:%
