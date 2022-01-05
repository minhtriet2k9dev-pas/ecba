import std/os
from strformat import fmt

var configFileName = getCurrentDir()&"/ecba_config.txt"
var fileLines: array[0..666, string]

proc readFileConentAndSeperate() =
    let file = open(configFileName)
    defer: file.close()
    let fileContent = file.readAll()
    var text = ""
    var count = 0
    for k in fileContent:
        #echo fmt"{k}"
        #echo fmt"text =  '{text}'"
        if fmt"{k}" == "\n":
            fileLines[count] = text
            text = ""
            count += 1
        else:
            text &= k
    if text != "":
        fileLines[count] = text

readFileConentAndSeperate()
echo fileLines[1]
