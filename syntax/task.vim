if exists("b:current_syntax")
  finish
endif

syntax keyword taskKeyword New new Working working Done done Todo TODO todo bug Bug Feature feature Discuss discuss Idea idea Test test

syntax match taskWorkingIcon "^-" contained
syntax match taskWorkingIcon "^\s*-" contained
syntax match taskDoneIcon "^✓" contained
syntax match taskDoneIcon "^\s*✓" contained

syntax match taskWorkingItem "^-.*" contains=taskWorkingIcon,taskKeyword
syntax match taskWorkingItem "^\s*-.*" contains=taskWorkingIcon,taskKeyword
syntax match taskDoneItem "^✓.*" contains=taskDoneIcon,taskKeyword
syntax match taskDoneItem "^\s*✓.*" contains=taskDoneIcon,taskKeyword

highlight taskKeyword guifg=#96CBFE guibg=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE

highlight Normal guifg=#f6f3e8 guibg=NONE gui=NONE ctermfg=244 ctermbg=NONE cterm=italic
highlight taskWorkingItem guifg=#f6f3e8 guibg=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
highlight taskDoneItem guifg=#A8FF60 guibg=NONE gui=italic ctermfg=64 ctermbg=NONE cterm=italic

highlight taskWorkingIcon guifg=#FF6C60 guibg=NONE gui=NONE ctermfg=red ctermbg=NONE cterm=NONE
highlight taskDoneIcon guifg=#A8FF60 guibg=NONE gui=italic ctermfg=64 ctermbg=NONE cterm=italic

syntax match sectionTitleLine "^.*:\s*$" contains=sectionTitle
syntax match sectionTitle "\S.*:\s*$"
highlight sectionTitle guifg=NONE guibg=NONE gui=bold ctermfg=white ctermbg=33 cterm=bold,standout

syntax match taskListTitle /^.*\%1l.*$/
highlight taskListTitle guifg=NONE guibg=NONE gui=bold ctermfg=white ctermbg=124 cterm=bold,standout,underline

let b:current_syntax = "task"
