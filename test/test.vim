let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
imap <F12> :set nu!i
imap <F9> :w:makei
inoremap <F7> :call ChangeBuf(":bn")i
inoremap <F6> :call ChangeBuf(":bp")i
imap <F5> :lsi
imap <F2> :wi
vmap <silent>  a:call MyKeyMapHighlight()gv
nmap <silent>  a:call MyKeyMapHighlight()
nmap \ca <Plug>NERDCommenterAltDelims
xmap \cu <Plug>NERDCommenterUncomment
nmap \cu <Plug>NERDCommenterUncomment
xmap \cb <Plug>NERDCommenterAlignBoth
nmap \cb <Plug>NERDCommenterAlignBoth
xmap \cl <Plug>NERDCommenterAlignLeft
nmap \cl <Plug>NERDCommenterAlignLeft
nmap \cA <Plug>NERDCommenterAppend
xmap \cy <Plug>NERDCommenterYank
nmap \cy <Plug>NERDCommenterYank
xmap \cs <Plug>NERDCommenterSexy
nmap \cs <Plug>NERDCommenterSexy
xmap \ci <Plug>NERDCommenterInvert
nmap \ci <Plug>NERDCommenterInvert
nmap \c$ <Plug>NERDCommenterToEOL
xmap \cn <Plug>NERDCommenterNested
nmap \cn <Plug>NERDCommenterNested
xmap \cm <Plug>NERDCommenterMinimal
nmap \cm <Plug>NERDCommenterMinimal
xmap \c  <Plug>NERDCommenterToggle
nmap \c  <Plug>NERDCommenterToggle
xmap \cc <Plug>NERDCommenterComment
nmap \cc <Plug>NERDCommenterComment
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
nmap <F12> :set nu!
vmap <F9> :w:makei
nmap <F9> :w:make
omap <F9> :w:make
vnoremap <F7> :call ChangeBuf(":bn")
nnoremap <F7> :call ChangeBuf(":bn")
vnoremap <F6> :call ChangeBuf(":bp")
nnoremap <F6> :call ChangeBuf(":bp")
vmap <F5> :ls
nmap <F5> :ls
vmap <F2> :wi
nmap <F2> :w
imap <silent>  X:call MyKeyMapHighlight()a
cmap <silent>  
let &cpo=s:cpo_save
unlet s:cpo_save
set keymap=russian-jcukenwin
set autoindent
set backspace=indent,eol,start
set cindent
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=ru
set history=64
set iminsert=0
set imsearch=0
set laststatus=2
set mouse=a
set printoptions=paper:a4
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftwidth=4
set softtabstop=4
set statusline=%F%m%r%h%w\ [FF,FE,TE=%{&fileformat},%{&fileencoding},%{&encoding}]\ [TYPE=%Y]\ [ASCII=%03.3b]\ [HEX=%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set title
set undolevels=128
set whichwrap=b,<,>,[,],l,h
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/cpp/GIRAFF/GIRAFF.github.io/test
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +10 index.html
badd +0 js/main.js
badd +0 css/main.css
argglobal
silent! argdel *
argadd index.html
argadd js/main.js
argadd css/main.css
edit index.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 50 + 84) / 168)
exe 'vert 2resize ' . ((&columns * 117 + 84) / 168)
argglobal
lnoremap <buffer> " Э
lnoremap <buffer> # №
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' э
lnoremap <buffer> , б
lnoremap <buffer> . ю
lnoremap <buffer> / .
lnoremap <buffer> : Ж
lnoremap <buffer> ; ж
lnoremap <buffer> < Б
lnoremap <buffer> > Ю
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A Ф
lnoremap <buffer> B И
lnoremap <buffer> C С
lnoremap <buffer> D В
lnoremap <buffer> E У
lnoremap <buffer> F А
lnoremap <buffer> G П
lnoremap <buffer> H Р
lnoremap <buffer> I Ш
lnoremap <buffer> J О
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> K Л
lnoremap <buffer> L Д
lnoremap <buffer> M Ь
lnoremap <buffer> N Т
lnoremap <buffer> O Щ
lnoremap <buffer> P З
lnoremap <buffer> Q Й
lnoremap <buffer> R К
lnoremap <buffer> S Ы
lnoremap <buffer> T Е
lnoremap <buffer> U Г
lnoremap <buffer> V М
lnoremap <buffer> W Ц
lnoremap <buffer> X Ч
lnoremap <buffer> Y Н
lnoremap <buffer> Z Я
lnoremap <buffer> [ х
lnoremap <buffer> ] ъ
lnoremap <buffer> ^ :
lnoremap <buffer> ` ё
lnoremap <buffer> a ф
lnoremap <buffer> b и
lnoremap <buffer> c с
lnoremap <buffer> d в
lnoremap <buffer> e у
lnoremap <buffer> f а
lnoremap <buffer> g п
lnoremap <buffer> h р
lnoremap <buffer> i ш
lnoremap <buffer> j о
lnoremap <buffer> k л
lnoremap <buffer> l д
lnoremap <buffer> m ь
lnoremap <buffer> n т
lnoremap <buffer> o щ
lnoremap <buffer> p з
lnoremap <buffer> q й
lnoremap <buffer> r к
lnoremap <buffer> s ы
lnoremap <buffer> t е
lnoremap <buffer> u г
lnoremap <buffer> v м
lnoremap <buffer> w ц
lnoremap <buffer> x ч
lnoremap <buffer> y н
lnoremap <buffer> z я
lnoremap <buffer> { Х
lnoremap <buffer> } Ъ
lnoremap <buffer> ~ Ё
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=ru_yo,en_us
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cpp/GIRAFF/GIRAFF.github.io/test
wincmd w
argglobal
edit ~/cpp/GIRAFF/GIRAFF.github.io/test/js/main.js
lnoremap <buffer> " Э
lnoremap <buffer> # №
lnoremap <buffer> $ ;
lnoremap <buffer> & ?
lnoremap <buffer> ' э
lnoremap <buffer> , б
lnoremap <buffer> . ю
lnoremap <buffer> / .
lnoremap <buffer> : Ж
lnoremap <buffer> ; ж
lnoremap <buffer> < Б
lnoremap <buffer> > Ю
lnoremap <buffer> ? ,
lnoremap <buffer> @ "
lnoremap <buffer> A Ф
lnoremap <buffer> B И
lnoremap <buffer> C С
lnoremap <buffer> D В
lnoremap <buffer> E У
lnoremap <buffer> F А
lnoremap <buffer> G П
lnoremap <buffer> H Р
lnoremap <buffer> I Ш
lnoremap <buffer> J О
let s:cpo_save=&cpo
set cpo&vim
lnoremap <buffer> K Л
lnoremap <buffer> L Д
lnoremap <buffer> M Ь
lnoremap <buffer> N Т
lnoremap <buffer> O Щ
lnoremap <buffer> P З
lnoremap <buffer> Q Й
lnoremap <buffer> R К
lnoremap <buffer> S Ы
lnoremap <buffer> T Е
lnoremap <buffer> U Г
lnoremap <buffer> V М
lnoremap <buffer> W Ц
lnoremap <buffer> X Ч
lnoremap <buffer> Y Н
lnoremap <buffer> Z Я
lnoremap <buffer> [ х
lnoremap <buffer> ] ъ
lnoremap <buffer> ^ :
lnoremap <buffer> ` ё
lnoremap <buffer> a ф
lnoremap <buffer> b и
lnoremap <buffer> c с
lnoremap <buffer> d в
lnoremap <buffer> e у
lnoremap <buffer> f а
lnoremap <buffer> g п
lnoremap <buffer> h р
lnoremap <buffer> i ш
lnoremap <buffer> j о
lnoremap <buffer> k л
lnoremap <buffer> l д
lnoremap <buffer> m ь
lnoremap <buffer> n т
lnoremap <buffer> o щ
lnoremap <buffer> p з
lnoremap <buffer> q й
lnoremap <buffer> r к
lnoremap <buffer> s ы
lnoremap <buffer> t е
lnoremap <buffer> u г
lnoremap <buffer> v м
lnoremap <buffer> w ц
lnoremap <buffer> x ч
lnoremap <buffer> y н
lnoremap <buffer> z я
lnoremap <buffer> { Х
lnoremap <buffer> } Ъ
lnoremap <buffer> ~ Ё
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=russian-jcukenwin
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 05|
lcd ~/cpp/GIRAFF/GIRAFF.github.io/test
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 50 + 84) / 168)
exe 'vert 2resize ' . ((&columns * 117 + 84) / 168)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
