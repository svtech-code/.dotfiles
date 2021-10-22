nmap <leader>g :NERDTreeFind<CR>
"nmap <leader>t :NERDTreeToggle<CR>     " Para abrir nerdtree

" ============ Abrir NerdTree si no se ha abierto algún archivo =============

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"============================================================================


" ============ Cerrar NerdTree si se cerraron todos los archivos =============

"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    "\ quit | endif

"============================================================================

let NERDTreeQuitOnOpen=1          "Cierra nerdtree, al abrir un archivo
let NERDTreeShowHidden=1          "Mostrar documentos ocultos


