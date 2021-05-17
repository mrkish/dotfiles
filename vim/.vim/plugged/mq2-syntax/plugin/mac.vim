" Vim syntax file
" Language:	Macroquest2 Macro Language
" Maintainer:	DKAA (dont_know_at_all@yahoo.com)
" Last Change:	2005 Jul 22

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" TODO mq2member mq2index
syn region mq2variable      start="\${" end="}" contains=mq2member,mq2index,mq2variable

" TODO event should be region
syn match mq2pounds         "#\(include\|define\|turbo\|event\|chat\)"

syn match mq2main           "[mM][aA][iI][nN]" contained
syn region mq2subr          matchgroup=mq2sub start="[Ss][uU][bB]" end="$" contains=mq2main

syn region mq2expr          start="(" end=")" contained contains=mq2expr,mq2variable
syn keyword mq2else         else
syn region mqifr            matchgroup=mq2if start="\/if\s*(" end=")" contains=mq2expr,mq2if
syn keyword mq2to           contained to
syn region mq2forr          matchgroup=mq2for start="\/for" end="$" contains=mq2to
syn keyword mq2tarparam     contained id npc pc corpse
syn region mq2targetr       matchgroup=mq2target start="\/tar\(get\|\)" end="$" contains=mq2tarparam,mq2variable

syn match mq2label          ":[a-zA-Z0-9_]*$"

syn keyword mq2scope        local outer global contained
syn keyword mq2vartype      int string bool item spell buff float spawn contained
syn region mq2declarer      matchgroup=mq2declare start="\/declare" end="$" contains=mq2vartype,mq2scope

syn region mq2varsetr       matchgroup=mq2varset start="\/varset" end="$"        
syn region mq2varcalcr      matchgroup=mq2varcalc start="\/varcalc" end="$" contains=mq2expr

syn region mq2CommentL      start="|" skip="\\$" end="$" keepend 
syn region mq2Comment       matchgroup=mq2CommentStart start="|\*" end="\*|" contains=@Spell
syn match mq2inprogress     "\/\(next\|mqlog\|return\|call\|echo\|attack\|face\|delay\|goto\|shift\|ctrl\|alt\|notify\|itemn\(otify\|\)\|click\|keypress\|ini\|endm\(acro\|\)\|doability\|doevents\|destroy\|cleanup\|squelch\|custombind\|alias\|pet\|deletevar\|assist\)"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_rcslog_syntax_inits")
  if version < 508
    let did_rcslog_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif


  HiLink mq2pounds		Type
  HiLink mq2else		Type
  HiLink mq2main		Type
  HiLink mq2sub		Type
  HiLink mq2if		Type
  HiLink mq2for		Type
  HiLink mq2tarparam		Type
  HiLink mq2target		Type

  HiLink mq2label		Statement
  HiLink mq2scope		Statement
  HiLink mq2vartype 		Statement


  HiLink mq2comment		Comment
  HiLink mq2CommentL		Comment
  HiLink mq2CommentStart		Comment
  HiLink mq2Comment		Comment
  HiLink mq2to		Type
  HiLink mq2sub		Type
  HiLink mq2conditional	        Type
  HiLink mq2inprogress		Type
  HiLink mq2declare		Type
  HiLink mq2varset		Type
  HiLink mq2varcalc		Type

  delcommand HiLink
endif

let b:current_syntax = "mq2"

" vim: ts=8
