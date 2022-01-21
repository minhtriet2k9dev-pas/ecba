import std/os
from strformat import fmt

var mainFile = getCurrentDir()&"/EcbaFile"
var fileLines: array[0..666, string]
var fileLineCount = 0

proc readFileConentAndSeperate(file: string, setCountValue: bool = false): int =
    if not fileExists(file):
        echo "File not found: ", file
        echo "Please create the file and try again."

        return 0
    let file = open(file)
    defer: file.close()
    let fileContent = file.readAll()
    var text = ""
    var count = 0
    for k in fileContent:
        if fmt"{k}" == "\n": # use fmt because k is char and con not compare with string
            fileLines[count] = text
            text = ""
            count += 1
        else:
            text &= k
    if text != "":
        fileLines[count] = text
    if setCountValue:
        fileLineCount = count
    return count

discard readFileConentAndSeperate(mainFile, true)
echo fileLines[1]
