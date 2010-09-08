" vim:set ts=8 sts=2 sw=2 tw=0:
"
" matrix.vim - MATRIX like colorscheme.
"
" Maintainer:MURAOKA Taro <koron@tka.att.ne.jp>
" Last Change:  10-Jun-2003.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
  endif
  let g:colors_name = 'matrix'
  " the character under the cursor
  hi Cursorguifg=#226622 guibg=#55ff55
  hi lCursorguifg=#226622 guibg=#55ff55
  " like Cursor, but used when in IME mode |CursorIM|
  hi CursorIMguifg=#226622 guibg=#55ff55
  " directory names (and other special names in listings)
  hi Directoryguifg=#55ff55 guibg=#000000
  " diff mode: Added line |diff.txt|
  hi DiffAddguifg=#55ff55 guibg=#226622 gui=none
  " diff mode: Changed line |diff.txt|
  hi DiffChangeguifg=#55ff55 guibg=#226622 gui=none
  " diff mode: Deleted line |diff.txt|
  hi DiffDeleteguifg=#113311 guibg=#113311 gui=none
  " diff mode: Changed text within a changed line |diff.txt|
  hi DiffTextguifg=#55ff55 guibg=#339933 gui=bold
  " error messages on the command line
  hi ErrorMsgguifg=#55ff55 guibg=#339933
  " the column separating vertically split windows
  hi VertSplitguifg=#339933 guibg=#339933
  " line used for closed folds
  hi Foldedguifg=#44cc44 guibg=#113311
  " 'foldcolumn'
  hi FoldColumnguifg=#44cc44 guibg=#226622
  " 'incsearch' highlighting; also used for the text replaced with
  hi IncSearchguifg=#226622 guibg=#55ff55 gui=none
  " line number for ":number" and ":#" commands, and when 'number'
  hi LineNrguifg=#44cc44 guibg=#000000
  " 'showmode' message (e.g., "-- INSERT --")
  hi ModeMsgguifg=#44cc44 guibg=#000000
  " |more-prompt|
  hi MoreMsgguifg=#44cc44 guibg=#000000
  " '~' and '@' at the end of the window, characters from
  hi NonTextguifg=#44cc44 guibg=#113311
  " normal text
  hi Normalguifg=#44cc44 guibg=#000000
  " |hit-enter| prompt and yes/no questions
  hi Questionguifg=#44cc44 guibg=#000000
  " Last search pattern highlighting (see 'hlsearch').
  hi Searchguifg=#113311 guibg=#44cc44 gui=none
  " Meta and special keys listed with ":map", also for text used
  hi SpecialKeyguifg=#44cc44 guibg=#000000
  " status line of current window
  hi StatusLineguifg=#55ff55 guibg=#339933 gui=none
  " status lines of not-current windows
  hi StatusLineNCguifg=#113311 guibg=#339933 gui=none
  " titles for output from ":set all", ":autocmd" etc.
  hi Titleguifg=#55ff55 guibg=#113311 gui=bold
  " Visual mode selection
  hi Visualguifg=#55ff55 guibg=#339933 gui=none
  " Visual mode selection when vim is "Not Owning the Selection".
  hi VisualNOSguifg=#44cc44 guibg=#000000
  " warning messages
  hi WarningMsgguifg=#55ff55 guibg=#000000
  " current match in 'wildmenu' completion
  hi WildMenuguifg=#226622 guibg=#55ff55
  hi Commentguifg=#226622 guibg=#000000
  hi Constantguifg=#55ff55 guibg=#226622
  hi Specialguifg=#44cc44 guibg=#226622
  hi Identifierguifg=#55ff55 guibg=#000000
  hi Statementguifg=#55ff55 guibg=#000000 gui=bold
  hi PreProcguifg=#339933 guibg=#000000
  hi Typeguifg=#55ff55 guibg=#000000 gui=bold
  hi Underlinedguifg=#55ff55 guibg=#000000 gui=underline
  hi Errorguifg=#55ff55 guibg=#339933
  hi Todoguifg=#113311 guibg=#44cc44 gui=none
