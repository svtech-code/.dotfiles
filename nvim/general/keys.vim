let mapleader = ' '       " Definir la tecla líder

nnoremap <leader>w :w<CR>           " Guardar el archivo

" para cerrar ciertos caracteres
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

"DESABILITADOS PARA EVITAR CONFLICTO CON OTROS COMANDOS
"nnoremap <leader>q :q<CR>           " Salir de nvim
"nnoremap <leader>sq :wq<CR>         " Guardar y salir
"nmap <leader>wq :wq<CR>

nmap <F5> :source ~/.config/nvim/init.vim<CR>       " Recargar archivo de nvim
vmap <F5> :source ~/.config/nvim/init.vim<CR>       " Recargar nvim en modo visual

" Inhabilitar las flechas de dirección en nvim
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
 
" Habilitar teclas de movimiento para aumentar o reducir el tamano del buffer
nnoremap <silent> <down> :resize +5<CR>
nnoremap <silent> <up> :resize -5<CR>
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>

" Habre el archivo init de vim
nnoremap <leader>e :e ~/.config/nvim/init.vim<CR>

" Habre un terminal en la parte de abajo de la pantalla
nnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>

" Habre una nueva ventana
nnoremap <leader>t :tabe<CR>   

" Moverme y cerrar buffers
nnoremap <leader>j :bnext<CR>
nnoremap <leader>k :bprevious<CR>
nnoremap <leader>q :bdelete<CR>

" Hacer un split vertical
nnoremap <leader>vs :vsp<CR>

" Hace un split horizontal
nnoremap <leader>sp :sp<CR>
