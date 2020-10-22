" Vim syntax file
" Language: CpcdosC+
" Maintainer: d0p1
" Filenames: *.cpc

if exists("b:current_syntax")
	finish
endif

syn case ignore

"
" Keywords
"
syn match cpcStatement		"TXT/" display
syn match cpcStatement		"STOP\(K\)\?/" display
syn match cpcStatement		"CLS/" display
syn match cpcStatement		"POS\(X\|Y\)/" display
syn match cpcStatement		"EXE/" display
syn match cpcStatement          "SHELL/" display
syn match cpcStatement          "DOS/" display
syn match cpcStatement          "TOUCHE/" display
syn match cpcStatement          "PAUSE/" display
syn match cpcStatement          "MSGBOX/" display
syn match cpcStatement          "REP/" display
syn match cpcStatement          "EXE/" display
syn match cpcStatement          "IUG/" display
syn match cpcStatement          "LC/" display
syn match cpcStatement          "EV/" display
syn match cpcStatement          "PROC/" display
syn match cpcStatement          "EXPLORER/" display
syn match cpcStatement          "ACTUALISE/" display
syn match cpcStatement          "FOCUS/" display
syn match cpcStatement          "FICHIER/" display
syn match cpcStatement          "CREER/" display

syn match cpcConditional	"SI/" display
syn match cpcConditional	"SINON/" display
syn match cpcConditional	"FIN/ SI" display

syn match cpcVar		"FIX/" display
syn match cpcVar		"INI\(/\|;\)" display

syn match cpcLabel		":[a-zA-z0-9_]*:" display
syn match cpcRepeat		"ALLEZ/" display

syn keyword cpcTodo		TODO FIXME XXX contained

"
" Comment
"
syn match cpcComment		"^REM/ .*$" display contains=cpcTodo

"
" Number
"
syn match cpcNumber		"\<\d\>" display
syn match cpcNumber		"\<[0-9]\d\+\>" display

"
" Variables
"
syn match cpcVariable		"%[a-zA-z0-9_]*%"

"
" String
"
syn match cpcString		"\".*\"" display contains=cpcVariable

"
" Link
"

hi def link cpcStatement	Statement
hi def link cpcConditional	Conditional
hi def link cpcVar		Function
hi def link cpcLabel		Function
hi def link cpcRepeat		Repeat
hi def link cpcTodo		Todo
hi def link cpcComment		Comment
hi def link cpcNumber		Number
hi def link cpcVariable		Special
hi def link cpcString		String

let b:current_syntax = "cpc"
