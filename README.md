# ecba

#### execute your command by alias and more features...

## compile for OS X (my OS) :
    nimpretty src/main.nim ; nim c -r --hints:off --outdir:bin src/main.nim
## compile for Windows:
    nimpretty src/main.nim ; nim c  --d:mingw --hints:off --outdir:winbin src/main.nim 
## for both OS:
    nimpretty src/main.nim ; nim c  --d:mingw --hints:off --outdir:winbin src/main.nim ; nim c -r --hints:off --outdir:bin src/main.nim
