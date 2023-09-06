" Macros for simple C code files

" Only compile
map <F5> :w <CR> :!printf "\033c";gcc -Wall -Wextra -Wfatal-errors % -o %< <CR>

" Compile and run
map <F6> :w <CR> :!printf "\033c";gcc -Wall -Wextra -Wfatal-errors % -o %< && clear ; ./%< <CR>

:colo murphy
