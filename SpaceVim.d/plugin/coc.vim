set hidden


set nobackup
set nowritebackup

call coc#config("coc.preferences",{
  \"autoTrigger": "always",
  \"maxCompleteItemCount": 10,
  \ "codeLens.enable": 1,
  \"diagnostic.virtualText": 1,
  \"formatOnSaveFiletypes": ["java","css","markdown","c","go","python"],
  \})

call coc#config("suggest",{
  \"languageSourcePriority": 99,
  \}
  \)
call coc#config(
  \"coc.source",
  \{
  \"neosnippet.priority":97,
  \}
  \)
call coc#config(
  \"tabnine",{
  \"priority": 98,
  \},
  \)

call coc#config("explorer",{
      \"icon.enableNerdfont":1,
      \"keyMappingMode":"none",
      \"keyMappings.global":{
      \"i": 0, 
      \"k": "nodePrev",
      \"j": "nodeNext",
      \"gk": "expandablePrev",
      \"gj": "expandableNext",
      \"*": "toggleSelection",
      \"/": "actionMenu",
      \"h": "collapse",
      \"l": ["expandable?", "expand", "open"],
      \"J": ["toggleSelection", "nodeNext"],
      \"K": ["toggleSelection", "nodePrev"],
      \"gl": "expandRecursive",
      \"gh": "collapseRecursive",
      \"<2-LeftMouse>": [
      \"expandable?",
      \["expanded?", "collapse", "expand"],
      \"open"
      \],
      \"o": ["expanded?",
      \"collapse", "expand"],
      \"<cr>":
      \["expandable?",
      \"cd", "open"],
      \"e": "open",
      \"s":"open:split",
      \"S":"open:split:plain",
      \"E":"open:vsplit",
      \"t":"open:tab",
      \"<bs>":"gotoParent",
      \"gp":"preview:labeling",
      \"y":"copyFilepath",
      \"Y":"copyFilename",
      \"c":"copyFile",
      \"x":"cutFile",
      \"p":"pasteFile",
      \"d":"delete",
      \"D":"deleteForever",
      \"a":"addFile",
      \"A":"addDirectory",
      \"r":"rename",
      \".":"toggleHidden",
      \"R":"refresh",
      \"?":"help",
      \"q":"quit",
      \"<esc>":"esc",
      \"X":"systemExecute",
      \"gd":"listDrive",
      \"f":"search",
      \"F":"searchRecursive",
      \"gf":"gotoSource:file",
      \"gb":"gotoSource:buffer",
      \"[[":"sourcePrev",
      \"]]":"sourceNext",
      \"[d":"diagnosticPrev",
      \"]d":"diagnosticNext",
      \"[c":"gitPrev",
      \"]c":"gitNext",
      \"<<":"gitStage",
      \">>":"gitUnstage"
      \},
      \})


" call coc#config("languageserver", {
"       \"clangd": {
"       \"command": "clangd",
"       \"rootPatterns": ["compile_flags.txt", "compile_commands.json"],
"       \"filetypes": ["c", "cpp", "objc", "objcpp"]
"       \},
"       \"bash": {
"       \  "command": "bash-language-server",
"       \  "args": ["start"],
"       \  "filetypes": ["sh"],
"       \  "ignoredRootPaths": ["~"]
"       \},
"       \"cmake": {
"       \"command": "cmake-language-server",
"       \"filetypes": ["cmake"],
"       \"rootPatterns": [
"       \"build/"
"       \ ],
"       \"initializationOptions": {
"       \"buildDirectory": "build"
"       \ }
"       \}
"       \})

let g:coc_global_extensions = [
      \ 'coc-stylelint',
      \ 'coc-css',
      \ 'coc-java',
      \ 'coc-rls',
      \ 'coc-clangd',
      \ 'coc-jedi',
      \ 'coc-go',
      \ 'coc-xml',
      \ 'coc-tabnine',
      \ 'coc-word',
      \ 'coc-dictionary',
      \ 'coc-rls',
      \ 'coc-vimlsp',
      \ 'coc-ci',
      \ 'coc-snippets',
      \ 'coc-emmet',
      \ 'coc-html',
      \ 'coc-css',
      \ 'coc-prettier',
      \ 'coc-tsserver',
      \ 'coc-neosnippet',
      \ 'coc-sh',
      \ 'coc-emoji',
      \ 'coc-yaml',
      \ 'coc-explorer',
      \ 'coc-markdownlint',
      \]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)))

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)



nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-prev)

 " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> <space>bf :call CocAction('format')<CR>


 " map the keys of bookmark
 " nmap <silent> mm <Plug>(coc-bookmark-toggle)
 " nmap <silent> ma :CocList bookmark<CR>
 " nmap <silent> mn <Plug>(coc-bookmark-next)
 " nmap <silent> mp <Plug>(coc-bookmark-prev)
 " nmap <silent> mi <Plug>(coc-bookmark-annotate)
 " nmap <silent> mc :CocCommand bookmark.clearForCurrentFile<CR>
 " nmap <silent> mx :CocCommand bookmark.clearForAllFiles<CR>

 " Use K for show documentation in preview window
 nnoremap <silent> K :call <SID>show_documentation()<CR>
 autocmd CursorHold * silent call CocActionAsync('highlight')
 set updatetime=100

 function! s:show_documentation()
   if &filetype == 'vim'
       execute 'h '.expand('<cword>')
   else
       call CocAction('doHover')
   endif
endfunction

nmap <silent><F3> :CocCommand explorer<CR>



nnoremap <C-j> :res -2<CR>
nnoremap <C-k> :res +2<CR>
nnoremap <C-h> :vertical resize -2<CR>
nnoremap <C-l> :vertical resize +2<CR>


let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
nmap <silent><TAB> :wincmd w<CR>

" inoremap <silent><C-/> <Plug>NERDCommenterInvert
