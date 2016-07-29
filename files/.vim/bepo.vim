" {W} -> [É]
noremap é w
noremap É W
noremap aé aw
noremap aÉ aW
map w <C-w>
map à <C-w>
map À <C-w><C-w>
map Y <C-w>W

" [HJKL] -> {TSRN}
noremap t h
noremap s j
noremap r k
noremap n l

noremap T H
noremap S J
noremap R K
noremap N L

noremap zs zj
noremap zt zk

" {HJKL} <- [TSRN]
noremap h r
noremap j t
noremap k s
noremap l n

noremap H R
noremap J T
noremap K S
noremap L N

noremap ]k ]s
noremap [k [s

" Window mapping
noremap <C-W>t <C-W>h
noremap <C-W>s <C-W>j
noremap <C-W>r <C-W>k
noremap <C-W>n <C-W>l

noremap <C-W>T <C-W>H
noremap <C-W>S <C-W>L
noremap <C-W>R <C-W>J
noremap <C-W>N <C-W>K

noremap <C-W>h <C-W>t
noremap <C-W>j <C-W>s
noremap <C-W>k <C-W>r
noremap <C-W>l <C-W>n

noremap <C-W>H <C-W>T
noremap <C-W>J <C-W>S
noremap <C-W>K <C-W>R
noremap <C-W>L <C-W>N

" Désambiguation de {g}
noremap gs gk
noremap gt gj
noremap gb gT
noremap gé gt

let g:buffergator_keep_old_mru_switching_keymaps = 1

" <> en direct
noremap « <
noremap » >

noremap è ^
noremap È 0

noremap C ^
noremap R g_

map ; :call DmenuOpen("tabe")<cr>
map € :call DmenuOpen("e")<cr>

map àà :ls<cr>
map "" :cn<cr>
map jj :cp<cr>
map çç :b#<cr>
