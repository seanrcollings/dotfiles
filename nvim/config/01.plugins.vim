call plug#begin()
 Plug 'tpope/vim-sensible'
 Plug 'rakr/vim-one' 
 Plug 'vim-airline/vim-airline'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'neovim/nvim-lspconfig'
 Plug 'lewis6991/gitsigns.nvim'
call plug#end()

