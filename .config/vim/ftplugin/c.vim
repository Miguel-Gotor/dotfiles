" Macros for simple, standalone C source code files whose header files are in
" the standard gcc include search path and require no additional compiler
" arguments

" :colo molokai

" Only compile and name binary after the C file. Stop compilation on error
" nnoremap <F5> :w <CR> :!printf "\033c";gcc -Wall -Wextra -Wfatal-errors % -o %< <CR>

" Call make
nnoremap <F6> :w <CR> :!printf "\033c";make && clear && ./%< <CR>

" Compile and run if compilation was succesful
nnoremap <F5> :w <CR> :!printf "\033c"; gcc -Wall -Wextra -Wfatal-errors % -o %< && clear && ./%<<CR>

" nnoremap <F6> :w <CR>:!gcc -Wall -Wextra -Wfatal-errors % -o %< && ./%<<CR>
" nnoremap <F6> :w<CR>:term ++curwin gcc -Wall -Wextra -Wfatal-errors % -o %< && ./%<CR>
" nnoremap <F6> :w<CR>:terminal gcc -Wall -Wextra -Wfatal-errors % -o %< && ./%<<CR>
" Open this file
" nnoremap <F8> <Esc>:w <CR> :e /$XDG_CONFIG_HOME/vim/ftplugin/c.vim <CR>
