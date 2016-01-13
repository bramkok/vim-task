if exists("b:current_syntax")
  finish
endif

syntax keyword taskKeyword New new Working working Done done Todo TODO todo bug Bug Feature feature Discuss discuss Idea idea Test test contained

syntax match taskWorkingIcon "^-" contained
syntax match taskWorkingIcon "^\s*-" contained
syntax match taskDoneIcon "^✓" contained
syntax match taskDoneIcon "^\s*✓" contained

syntax match taskWorkingItem "^-.*" contains=taskWorkingIcon,taskKeyword,inlineURL
syntax match taskWorkingItem "^\s*-.*" contains=taskWorkingIcon,taskKeyword,inlineURL
syntax match taskDoneItem "^✓.*" contains=taskDoneIcon,taskKeyword
syntax match taskDoneItem "^\s*✓.*" contains=taskDoneIcon,taskKeyword

highlight taskKeyword guifg=#96CBFE guibg=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE

highlight Normal guifg=#f6f3e8 guibg=NONE gui=NONE ctermfg=244 ctermbg=NONE cterm=italic
highlight taskWorkingItem guifg=#f6f3e8 guibg=NONE gui=NONE ctermfg=white ctermbg=NONE cterm=NONE
highlight taskDoneItem guifg=#A8FF60 guibg=NONE gui=italic ctermfg=green ctermbg=NONE cterm=italic

highlight taskWorkingIcon guifg=#FF6C60 guibg=NONE gui=NONE ctermfg=red ctermbg=NONE cterm=NONE
highlight taskDoneIcon guifg=#A8FF60 guibg=NONE gui=italic ctermfg=green ctermbg=NONE cterm=italic

syntax match sectionTitleLine "^.*:\s*$" contains=sectionTitle
syntax match sectionTitle "\S.*:\s*$"
highlight sectionTitle guifg=NONE guibg=NONE gui=bold ctermfg=33 ctermbg=none cterm=bold

syntax match taskListTitle /^.*\%1l.*$/
highlight taskListTitle guibg=NONE gui=NONE ctermfg=red ctermbg=NONE cterm=bold,underline

syntax match inlineURL /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/
highlight inlineURL guibg=NONE gui=NONE ctermfg=yellow ctermbg=NONE cterm=underline

let b:current_syntax = "task"
