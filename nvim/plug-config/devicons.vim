" configuración que evitará que los íconos se muestren entre corchetes al recargar nvim

if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif

" Configuración copiada de Astro
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
