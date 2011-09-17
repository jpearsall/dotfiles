source $HOME/.vim/plugins/BlockComment.vim
source $HOME/.vim/plugins/taglist.vim
source $HOME/.vim/plugins/strace.vim

set wrapscan
set tabstop=4
"set mouse=a
set number
set expandtab
set tabstop=4
set history=100
set incsearch
set synmaxcol=2048
set t_Co=256
set cursorline

set ch=2
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set laststatus=2

colorscheme wombat256
syntax on
filetype plugin on

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" Perl-centric vim settings
"
" column width per best practices
" autocmd FileType perl set textwidth=78

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

" my perl includes pod
autocmd FileType perl let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
autocmd FileType perl let perl_extended_vars = 1

"Inserting these abbreviations inserts the corresponding Perl statement...
autocmd FileType perl iab phbp #! /usr/bin/perl –w
autocmd FileType perl iab pdbg use Data::Dumper 'Dumper';^Mwarn Dumper [];^[hi
autocmd FileType perl iab pbmk use Benchmark qw( cmpthese );^Mcmpthese -10, {};^[O
autocmd FileType perl iab pusc use Smart::Comments;^M^M###
autocmd FileType perl iab putm use Test::More qw( no_plan );

"iab papp ^[:r ~/.code_templates/perl_application.pl^M
"iab pmod ^[:r ~/.code_templates/perl_module.pm^M
