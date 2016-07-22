" Général {{{
    let vimfiles=$HOME . "/.vim"

    let before_plugins=vimfiles . "/before_plugins.vim"
    if filereadable(before_plugins)
        exec "source " . before_plugins
    endif

    let before_plugins=vimfiles . "/before_plugins_bepo.vim"
    if filereadable(before_plugins)
        exec "source " . before_plugins
    endif

    execute pathogen#infect()

    " Affiche la limite de 80 caractères
    if v:version >= 703
        set colorcolumn=81
    endif

    set completeopt=longest,menuone
	set mouse=a
" }}}
" Apparence {{{
    syntax on
    colorscheme desert

    set cursorline
    highlight CursorLine cterm=bold ctermbg=none gui=bold guibg=grey20

    set scrolloff=3
" }}}
" Indentation {{{
    " Indentation en fonction du type de fichier
    filetype indent on

    " Indispensable pour ne pas tout casser avec ce qui va suivre
    set preserveindent

    " Indentation plus intelligente
    set smartindent

    " Largeur de l'autoindentation
    set shiftwidth=4

    " Arrondit la valeur de l'indentation
    set shiftround

    " Largeur du caractère TAB
    set tabstop=4

    " Largeur de l'indentation de la touche TAB
    set softtabstop=4

    " Remplacer les tabulations par des espaces
    set expandtab

    " Pas d'espace pour les Makefile
    augroup filetype
        autocmd FileType make setlocal noexpandtab
    augroup END

    " Fixing indenting of HTML files
    autocmd FileType html setlocal indentkeys-=*<Return>
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" }}}
" Recherches {{{
    " Surligner les résultats de recherche
    set hlsearch

    " Recherches:
    "   - en minuscules = indépendante de la casse
    "   - une majuscule = stricte
    set smartcase

    " Rechercher sans tenir compte de la casse
    " (indépendant du précédent mais de priorité plus faible)
    set ignorecase
" }}}
" Sauvegardes {{{
    set backup
" }}}
" Plugins {{{
    filetype plugin indent on
" }}}
" {{{ Invisibles chars
nmap <leader>1 :set list!<CR>
set listchars=tab:▸\ ,eol:¬
" }}}
" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" Dev {{{
set foldmethod=marker
set nu
" }}}
" Local {{{
let local_vim=vimfiles . "/local.vim"
if filereadable(local_vim)
    exec "source " . local_vim
endif

let databases_vim=vimfiles . "/databases.vim"
if filereadable(databases_vim)
    exec "source " . databases_vim
endif

let highlight_vim=vimfiles . "/highlight.vim"
if filereadable(highlight_vim)
    exec "source " . highlight_vim
endif

let local_vim="local.vim"
if filereadable(local_vim)
    exec "source " . local_vim
endif
" }}}
