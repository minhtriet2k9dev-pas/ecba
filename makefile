main:
	nimpretty src/main.nim ; nim c --hints:on -o:ecba --outdir:bin src/main.nim

debug:
	nim compile -g --debugger:native -o:bin/ecba src/main.nim

