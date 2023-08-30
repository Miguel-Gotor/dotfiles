inoremap \sec \section{}<Left>
inoremap \ssec \subsection{}<Left>
inoremap \toc \tableofcontents<CR>
inoremap \up \usepackage{}<Left>

" Compile TeX file into PDF using PDFLaTeX
inoremap <F5> <Esc> :w <CR> :!clear; pdflatex % <CR>; <CR>

" Hide auxiliary files
" inoremap <F5> <Esc> :w <CR> :!clear; mkdir -p tmp; pdflatex  -output-directory tmp %; mv tmp/*.pdf . <CR>; <CR>

" Open the compiled PDF using Zathura
nnoremap <F6> :!$READER <C-R>=expand('%:r').'.pdf'<CR>& :<ESC><CR>

" Silly little sound effects
" "success" sound after compilation
" nnoremap <F5> :w <CR> :!clear; pdflatex % <CR> :execute "!paplay" shellescape('/usr/share/sounds/Yaru/stereo/complete.oga') . " &"<CR><CR>
" *pop* sound:
" nnoremap <F6> :!$READER <C-R>=expand('%:r').'.pdf'<CR>& :<ESC><CR>:execute "!paplay" shellescape('/usr/share/sounds/freedesktop/stereo/message.oga') . " &"<CR><CR>

