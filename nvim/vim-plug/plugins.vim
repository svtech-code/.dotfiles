call plug#begin('~/.config/nvim/plugged')

" =========== COMPONENTES =============
    Plug 'scrooloose/nerdtree'              " Para habrir panel de archivos
    Plug 'christoomey/vim-tmux-navigator'   " Para navegar entre archivos abiertos
    Plug 'vim-airline/vim-airline'          " Permite modificar la barra de estados
    Plug 'vim-airline/vim-airline-themes'   " Temas para airline
    Plug 'ryanoasis/vim-devicons'           " Iconos par nvim
    Plug 'yggdroot/indentline'              " Marcar el identado
    Plug 'easymotion/vim-easymotion'        " Para hacer búsquedas avanzadas
    Plug 'ddollar/nerdcommenter'            " Para hacer comentarios e nvim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mattn/emmet-vim'

    " Revisar emmet-vim, para instalar
    " Revisar prettier, para configurar la sintaxis al guardar

" =========== THEMES =============
    Plug 'morhetz/gruvbox'
    Plug 'embark-theme/vim',{'as':'embark'}
    Plug 'ayu-theme/ayu-vim'
    Plug 'kaicataldo/material.vim'

call plug#end()
