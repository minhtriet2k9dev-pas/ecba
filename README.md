# ecba

#### execute your command by alias and more features...

## compile for OS X (my OS) (btw you need to install mingw toolchains first) :

    nimpretty src/main.nim ; nim c --hints:off --outdir:macbin  -o:ecba src/main.nim

## compile for Windows (btw you need to install sudo first) :

    nimpretty src/main.nim ; nim c  --d:mingw --hints:off --outdir:winbin -o:ecba.exe src/main.nim

## for both OS :

    nimpretty src/main.nim ; nim c  --d:mingw --hints:off -o:ecba.exe --outdir:winbin src/main.nim ; nim c -o:ecba --hints:off --outdir:macbin src/main.nim

#### if you want to run so add the "-r" after "nim c"
