" Vdebug {{{
let g:vdebug_options = {
			\	"server": "0.0.0.0",
			\	"path_maps": {"/home/httpd": "/home/httpd"},
			\	"break_on_open": 0
			\}
" }}}
" Dmenu {{{
" Strip the newline from the end of a string
function! Chomp(str)
    return substitute(a:str, '\n$', '', '')
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(cmd)
    let fname = Chomp(system("find . ! -name '*~' | dmenu -i -l 20 -p " . a:cmd))
    if empty(fname)
        return
    endif
    execute a:cmd . " " . fname
endfunction

set clipboard=unnamedplus
" }}}
" NERDTree {{{
command! NF NERDTreeFind
command! NE NERDTree
command! NO NERDTreeFocus
command! NT NERDTreeToggle " }}}
" Keysmapping {{{
let bepo_vim=vimfiles . "/bepo.vim"
if filereadable(bepo_vim)
    exec "source " . bepo_vim
endif
" }}}
" Google {{{
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
" }}}
" Powerline {{{
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
" }}}
" UltiSnips {{{
let g:UltiSnipsJumpForwardTrigger = "<c-l>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
" }}}
" Tsuquyomi {{{
let g:tsuquyomi_semicolon_import = 1
let g:tsuquyomi_baseurl_import_path = 0
let g:tsuquyomi_single_quote_import = 0
" }}}
