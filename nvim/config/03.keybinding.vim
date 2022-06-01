nmap <C-p> <esc>:FZF --preview /usr/bin/bat\ {}\ --color\ always\ --style\ plain<enter>
noremap ; l
noremap l k
noremap k j
noremap j h
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
