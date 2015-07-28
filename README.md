FileMan
=======

## Overview ##
FileMan is a thin wrapper for various Smalltalk file libraries. It provides simple, portable interfaces for manipulating files and directories.

Currently, FileMan can wrap those different Smalltalk file libraries.

- FileDirectory (Squeak, Cuis)
- FileSystem (Pharo)
- Filename (VisualWorks)

This repository is mainly for Pharo and Squeak.

### Cuis version ###
- [Repository for Cuis version](https://github.com/mumez/Cuis-Smalltalk-FileMan)

[Cuis](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev) is now replacing FileDirectory with FileMan. FileMan is already bundled on standard Cuis-dev image!  

### VW version ###

VW version is available on [Public StORE repository](http://www.cincomsmalltalk.com/publicRepository/). Please load FileMan(Bundle) from StORE.

## Example code ##
<pre>
"Before (legacy Squeak)"
subDir := FileDirectory default directoryNamed: 'subDir'.
subDir assureExistence.
[str := subDir newFileNamed: 'file1'.
str nextPutAll: 'Hello!']
ensure: [str close].

"After installation of FileMan"
'./subDir' asDirectoryEntry at: 'file2' put: 'Hello!'
</pre>

By installing FileMan, you can write simple, portable file manipulation code in different Smalltalk dialects/file libraries. 