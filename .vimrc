" Setting
"文字コードをUFT-8に設定
set fenc=utf-8

" 見た目
" 行番号を表示
set number
" インデントはスマートインデント
set smartindent
" 対応する括弧やブレースを表示
set showmatch matchtime=1
"カラースキーマを設定
colorscheme molokai
set t_Co=256
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

" 検索系
" 検索するときに大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字と小文字を無視して検索
set smartcase
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
" インデント幅
set shiftwidth=4


