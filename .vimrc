" brians vimrc file
" Based primarily on A good .vimrc + Vundle for plugins
" :verbose set et?

" TODO:
" consider replacing powerline with something more lightweight
" actually learn how to use vim
" can jedi-vim replace python-vim ?
" Trying vim wiki for note taking...

set nocompatible              " required *before* Vundle script
filetype off                  " same thing
set clipboard=unnamed         " os clipboard useage


" Fix Airline Symbols
let g:airline_powerline_fonts = 2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'vimwiki'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-repeat'
Plugin 'rust-lang/rust.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'morhetz/gruvbox'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'  " dependent on vim-javavscript, provides JSX highlighting for React
Plugin 'editorconfig/editorconfig-vim'
Plugin 'shutnik/jshint2.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'elmcast/elm-vim'
Plugin 'groovy.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'evanleck/vim-svelte'
Plugin 'cespare/vim-toml'
Plugin 'fatih/vim-go'
" Plugin 'mattn/vim-goimports'

"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"filetype plugin indent on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"
"*** Put your non-Plugin stuff after this line***

" For solarized plugin (color scheme)
" https://github.com/altercation/vim-colors-solarized

" Brian-Specifc commands:

set nowrap " vim will not wrap text onto the next line
set backspace=2 " make backspace work like most other apps

" let g:typescript_indent_disable = 1 " uncomment to turn off typescript
" plugin indentation

" set ruler " shows the line/collumn number

" Leader Shortcuts

let mapleader="," " leader is commma. Must come before references to <leader>

" Powerline setup

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9 " sets font
set laststatus=2 " ensures that Powerline shows up even w/o splits

"NERDTree is toggled with Control-n
map <C-t> :NERDTreeToggle<CR>

" Colors

set background=dark " remember to also set terminal color pallette to dark
colorscheme gruvbox "new vundle requires this after script
syntax enable " enable syntax processing

" Whitespace, Spaces and Tabs

" default indentation: 4 spaces
" set tabstop=4 " number of spaces vim will display per <TAB>
" set softtabstop=4 " number of spaces inserted when you hit <TAB>, or removed when backspace
"set expandtab " tabs are spaces. <TAB> is now a shortcut for inserting 4 spaces

augroup configgroup
    autocmd!
    autocmd FileType html setlocal tabstop=2 softtabstop=3 shiftwidth=2 expandtab
    autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType groovy setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType eruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab list
    autocmd FileType typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab list
    autocmd FileType svelte setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab list
    autocmd FileType elm setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab list
    autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType c setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType go setlocal noexpandtab copyindent preserveindent softtabstop=0 tabstop=4 shiftwidth=4 list
    autocmd BufRead,BufNewFile *.es6 setfiletype javascript
augroup END


" UI Configuration

set number " show line numbers
set showcmd " show command in bottom bar on bottom right
" set cursorline highlights current line
"filetype indent on " load filetype-specific indent from ~/.vim/indent/
set wildmenu " visual autocomplete for command menu. e.g. :e ~/.vim<TAB> you can cycle through
set lazyredraw " redraw only we need to, increases macro performance
set showmatch  " highlight matching [{()}]. matching one will be highlighted
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set showbreak=↪\

"set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:· "highlight trailing whitespace

" Searching

set ignorecase " defaults to case-insentive search
set smartcase " if search contains uppercase letters, search will be case-sensitive
set incsearch " search as characters are entered
set hlsearch " highlight matches
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight.

let g:surround_{char2nr('=')} = "<%= \r %>"
let g:surround_{char2nr('-')} = "<% \r %>"  " erb tag expansion for surround plugin

let g:jsx_ext_required = 0 " if 0, Let vim-jsx handle JSX in `.js` files.


" Go Stuf
autocmd FileType go nmap <leader>t  <Plug>(go-test)
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType qf wincmd J


let g:elm_format_autosave = 1 " let vim-elm run elm-format on autosaving

" Foldings

" set foldenable "enable folding
" set foldlevelstart=10 " open most folds by default

" Movement

" Backups
" Creates backups, and stores them to the directory
" directory reroutes vim swap files to the below directory
set backup
set backupdir=~/.vim/.backups/backup,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim/.backups/swap,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

let g:svelte_indent_style = 0
let g:svelte_indent_script = 0
