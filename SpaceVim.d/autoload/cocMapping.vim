" language mapping used for coc
" NOTICE: this mapping conflict with original mapping if lang#layer is open
"
"
function! cocMapping#before() abort
  " CocCommand go.install.gomodifytags
  " CocCommand go.install.goplay
  " CocCommand go.install.gopls
  " CocCommand go.install.gotests
  " CocCommand go.install.impl
  " CocCommand go.install.tools
  "

  " language reference
  "-----------build------------
  call SpaceVim#custom#LangSPC('go','nmap', ['a'], '<Plug>(coc-codeaction)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('go','xmap', ['a'], '<Plug>(coc-codeaction-selected)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('java','nmap', ['a'], '<Plug>(coc-codeaction)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('java','xmap', ['a'], '<Plug>(coc-codeaction-selected)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('c','nmap', ['a'], '<Plug>(coc-codeaction)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('c','xmap', ['a'], '<Plug>(coc-codeaction-selected)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('rust','nmap', ['a'], '<Plug>(coc-codeaction)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('rust','xmap', ['a'], '<Plug>(coc-codeaction-selected)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('python','nmap', ['a'], '<Plug>(coc-codeaction)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('python','xmap', ['a'], '<Plug>(coc-codeaction-selected)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('html','nmap', ['a'], '<Plug>(coc-codeaction)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('html','xmap', ['a'], '<Plug>(coc-codeaction-selected)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('css','nmap', ['a'], '<Plug>(coc-codeaction)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('css','xmap', ['a'], '<Plug>(coc-codeaction-selected)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('javascript','nmap', ['a'], '<Plug>(coc-codeaction)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('javascript','xmap', ['a'], '<Plug>(coc-codeaction-selected)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('markdown','nmap', ['a'], '<Plug>(coc-codeaction)', 'Actions', 0)
  call SpaceVim#custom#LangSPC('markdown','xmap', ['a'], '<Plug>(coc-codeaction-selected)', 'Actions', 0)
  "-----------build------------
  " call SpaceVim#custom#LangSPC('go','nmap', ['b'],
        " \ '<Plug>(go-build)',
        " \ 'go build', 0)
  "-----------run------------
  call SpaceVim#plugins#runner#reg_runner('go', 'go run %s')
  call SpaceVim#custom#LangSPC('go','nmap', ['r'], 'noautocmd w | call SpaceVim#plugins#runner#open()', 'execute current file', 1)
  call SpaceVim#custom#LangSPCGroupName('java',['r'],'execute current file')
  call SpaceVim#custom#LangSPC('java','nmap', ['r', 'm'], 'JavaUnitTestMain', 'Run main method', 1)
  call SpaceVim#custom#LangSPC('java','nmap', ['r', 'c'], 'JavaUnitExec', 'Run current method', 1)
  call SpaceVim#custom#LangSPC('java','nmap', ['r', 'a'], 'JavaUnitTestAll', 'Run all test methods', 1)
  "-----------import------------
  call SpaceVim#custom#LangSPC('go','nmap', ['i'],
        \ 'call CocAction(''runCommand'', ''editor.action.organizeImport'')',
        \ 'auto import package', 1)
  call SpaceVim#custom#LangSPC('java','nmap', ['i'],
        \ 'call CocAction(''runCommand'', ''editor.action.organizeImport'')',
        \ 'auto import package', 1)
  "-----------refactor------------
  call SpaceVim#custom#LangSPCGroupName('go',['R'],'Refactor')
  call SpaceVim#custom#LangSPCGroupName('java',['R'],'Refactor')
  call SpaceVim#custom#LangSPCGroupName('python',['R'],'Refactor')
  call SpaceVim#custom#LangSPCGroupName('c',['R'],'Refactor')
  call SpaceVim#custom#LangSPCGroupName('rust',['R'],'Refactor')
  call SpaceVim#custom#LangSPCGroupName('javascript',['R'],'Refactor')
  "rename
  call SpaceVim#custom#LangSPC('go','nmap', ['R','r'],
        \ '<Plug>(coc-rename)',
        \ 'rename', 0)
  call SpaceVim#custom#LangSPC('java','nmap', ['R','r'],
        \ '<Plug>(coc-rename)',
        \ 'rename', 0)
  call SpaceVim#custom#LangSPC('python','nmap', ['R','r'],
        \ '<Plug>(coc-rename)',
        \ 'rename', 0)
  call SpaceVim#custom#LangSPC('c','nmap', ['R','r'],
        \ '<Plug>(coc-rename)',
        \ 'rename', 0)
  call SpaceVim#custom#LangSPC('rust','nmap', ['R','r'],
        \ '<Plug>(coc-rename)',
        \ 'rename', 0)
  call SpaceVim#custom#LangSPC('javascript','nmap', ['R','r'],
        \ '<Plug>(coc-rename)',
        \ 'rename', 0)
  " quickfix
  call SpaceVim#custom#LangSPC('markdown','nmap', ['q'],
        \ '<Plug>(coc-fix-current)',
        \ 'Quick-Fix-Current', 0)
  call SpaceVim#custom#LangSPC('go','nmap', ['q'],
        \ '<Plug>(coc-fix-current)',
        \ 'Quick-Fix-Current', 0)
  call SpaceVim#custom#LangSPC('java','nmap', ['q'],
        \ '<Plug>(coc-fix-current)',
        \ 'Quick-Fix-Current', 0)
  call SpaceVim#custom#LangSPC('python','nmap', ['q'],
        \ '<Plug>(coc-fix-current)',
        \ 'Quick-Fix-Current', 0)
  call SpaceVim#custom#LangSPC('c','nmap', ['q'],
        \ '<Plug>(coc-fix-current)',
        \ 'Quick-Fix-Current', 0)
  call SpaceVim#custom#LangSPC('rust','nmap', ['q'],
        \ '<Plug>(coc-fix-current)',
        \ 'Quick-Fix-Current', 0)
  call SpaceVim#custom#LangSPC('javascript','nmap', ['q'],
        \ '<Plug>(coc-fix-current)',
        \ 'Quick-Fix-Current', 0)
  call SpaceVim#custom#LangSPC('css','nmap', ['q'],
        \ '<Plug>(coc-fix-current)',
        \ 'Quick-Fix-Current', 0)
  call SpaceVim#custom#LangSPC('html','nmap', ['q'],
        \ '<Plug>(coc-fix-current)',
        \ 'Quick-Fix-Current', 0)
  "format
  "format is definite in coc.nvim
  "other
  "-----------specify------------
  "golang
  call SpaceVim#custom#LangSPC('go','nmap', ['I'],
        \ ':CocCommand go.impl.cursor',
        \ 'impl stubs', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['h'],
        \ ':CocCommand go.version',
        \ 'go version', 0)
  call SpaceVim#custom#LangSPCGroupName('go',['t'],'+Tags')
  call SpaceVim#custom#LangSPC('go','nmap', ['t','a'],
        \ ':CocCommand go.tags.add',
        \ 'add tags to struct fileds', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['t','a'],
        \ ':CocCommand go.tags.add',
        \ 'add tags to struct fileds', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['t','l'],
        \ ':CocCommand go.tags.add.line',
        \ 'add tags to struct fileds in current line', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['t','p'],
        \ ':CocCommand go.tags.add.prompt',
        \ 'add tags to struct fileds(prompt)', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['t','c'],
        \ ':CocCommand go.tags.clear',
        \ 'remove all tags from struct fields', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['t','L'],
        \ ':CocCommand go.tags.clear.line',
        \ 'remove all tags from struct fields in current line', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['t','P'],
        \ ':CocCommand go.tags.clear.prompt',
        \ 'remove all tags from struct fields(prompt)', 1)
  call SpaceVim#custom#LangSPCGroupName('go',['T'],'+TestGroup')
  call SpaceVim#custom#LangSPC('go','nmap', ['T','g'],
        \ ':CocCommand go.test.generate.export',
        \ 'Generate unit tests for exported function', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['T','F'],
        \ ':CocCommand go.test.generate.file',
        \ 'Generate unit tests for file', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['T','f'],
        \ ':CocCommand go.test.generate.function',
        \ 'Generate unit tests for current function', 1)
  call SpaceVim#custom#LangSPC('go','nmap', ['T','t'],
        \ ':CocCommand go.test.toggle',
        \ 'Toggle test file', 1)
  " java
  call SpaceVim#custom#LangSPCGroupName('java',['m'],'maven')
  call SpaceVim#custom#LangSPC('java','nnoremap', ['m', 'i'], 
        \ 'noautocmd w | call SpaceVim#plugins#runner#open(''mvn clean install'')',
        \ 'Run maven clean install', 1)
  call SpaceVim#custom#LangSPC('java','nnoremap', ['m', 'I'],
        \ 'noautocmd w | call SpaceVim#plugins#runner#open(''mvn install'')',
        \ 'Run maven install', 1)
  call SpaceVim#custom#LangSPC('java','nnoremap', ['m', 't'],
        \ 'noautocmd w | call SpaceVim#plugins#runner#open(''mvn test'')',
        \ 'Run maven test', 1)
  call SpaceVim#custom#LangSPC('java','nnoremap', ['m', 'c'],
        \ 'noautocmd w | call SpaceVim#plugins#runner#open(''mvn compile'')',
        \ 'Run maven compile', 1)
  call SpaceVim#custom#LangSPC('java','nnoremap', ['m', 'r'],
        \ 'noautocmd w | call SpaceVim#plugins#runner#open(''mvn spring-boot:run'')',
        \ 'Run maven spring-boot run', 1)
  call SpaceVim#custom#LangSPC('java','nnoremap', ['m', 'p'],
        \ 'noautocmd w | call SpaceVim#plugins#runner#open(''mvn package'')',
        \ 'Run maven package', 1)
 endfunction
