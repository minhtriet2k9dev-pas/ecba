# ecba

#### execute your command by alias and more features...

## compile for OS X (my OS) (btw you need to install mingw toolchains first) :

    nimpretty src/main.nim ; nim c --hints:off --outdir:bin src/main.nim

## compile for Windows (btw you need to install sudo first) :

    nimpretty src/main.nim ; nim c  --d:mingw --hints:off --outdir:winbin src/main.nim

## for both OS :

    nimpretty src/main.nim ; nim c  --d:mingw --hints:off --outdir:winbin src/main.nim ; nim c -r --hints:off --outdir:bin src/main.nim

#### if you want to run so add the "-r" after "nim c"
