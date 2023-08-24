" Macros for C code files
"
" Only compile
map <F6> :w <CR> :!clear;gcc -Wall -Wextra % -o %< <CR>
" map <F6> :w <CR> :!clear;gcc -Wall -Wextra % -o %< <CR> && <CR>:echo "Compilation finished" <CR>

" Compile and run
map <F5> :w <CR> :!clear;gcc -Wall -Wextra % -o %< && ./%< <CR>
