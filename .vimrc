set nu
set ai
set tabstop=4

"My secret recipe
"vi scripting

augroup templates
                autocmd!
                "Auto load ehile creating new files
                autocmd BufNewFile *.c 0r /home/UnixRLL_CDC/cdc18/.vim/templates/skeleton.c

                autocmd BufWritePost,FileWritePost *.c !gcc -Wall %:p -o %:r

                "autocmd VimLeave *.c !gcc -Wall %:p -o %:r

augroup END
