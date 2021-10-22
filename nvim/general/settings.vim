"================ ONFIGURACIÓN PRINCIPAL DE NVIM =================== 

set title               " Muestra el nombre del archivo que se esta editando 
set number              " Muestra el número de las lineas 
set relativenumber      " Muestra la cantidad filas hacia arriba y abajo
set numberwidth=1       " Para especificar el espacio de separación de la izquierda
set clipboard=unnamed   " Permite copiar contenido desde fuera de nvim 
set encoding=utf-8
set nobackup            " No generarán archivos de seguridad
set splitbelow          " Para que el split que se genere, sea abajo
set splitright          " Para que el split que se genere, sea a la izquierda


set autoindent cindent 
set mouse=a             " Permite la integración con el mouse
set smartindent         " Permite que se genere identado automático

"Identación a 4 espacios 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab           " Inserta espacios en vez de <tab>


set hidden              " Permite cambiar el buffer sin tener que guardalo
set cursorline          " Resalta linea actual 
set spelllang=en,es 


syntax enable

" =========== configuraciones que puedo utilizar más adelante ===========
"set colorcolumn=120    " Muestra una linea de columna de acuerdo a la cantidad de caracteres especificados
"set ignorecase         " Ignorar mayúsculas al hacer una búsqueda
"set smartcase          " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
"set termguicolors      " Activa true colors en la terminal
"set showmatch          " Solo necesario en vim, permite resaltar un parentesis o llave de cierre, en el caso de que el cursor se situe sobre la llave de apertura
"set showcmd
"filetype on
"filetype plugin on
"filetype indent on
"set autoread
"set nowrap              " No dividir la linea si es muy larga
