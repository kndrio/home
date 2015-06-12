"Pathogen plugin manager
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
"Identação
"set cindent "It's bugging comma (,) on insert mode.
set smartindent
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set cinkeys=0{,0},:,0#,!,!^F
"Evitar problema dos comentários com copypaste
set pastetoggle=
"Número das Linhas
set number
"Quebra automática
set wrap
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
"Gnome-terminal is xterm compatible
set term=xterm
"Clipboard rulz
set clipboard+=unnamed
" Load vimrc in each directory that vim is opened in.
" This provides 'per project' vim config.
set exrc
set secure
" Tab name with number
if exists("+showtabline")
     function MyTabLine()
         let s = ''
         let t = tabpagenr()
         let i = 1
         while i <= tabpagenr('$')
             let buflist = tabpagebuflist(i)
             let winnr = tabpagewinnr(i)
             let s .= '%' . i . 'T'
             let s .= (i == t ? '%1*' : '%2*')
             let s .= ' '
             let s .= i . ')'
             let s .= ' %*'
             let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
             let file = bufname(buflist[winnr - 1])
             let file = fnamemodify(file, ':p:t')
             if file == ''
                 let file = '[No Name]'
             endif
             let s .= file
             let i = i + 1
         endwhile
         let s .= '%T%#TabLineFill#%='
         let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
         return s
     endfunction
     set stal=2
     set tabline=%!MyTabLine()
endif
