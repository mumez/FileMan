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

[Cuis](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev) now includes FileMan as a default file library.
[Repository for Cuis version](https://github.com/mumez/Cuis-Smalltalk-FileMan) is kept for historical reasons.

### VW version ###

VW version is available on [Public StORE repository](http://www.cincomsmalltalk.com/publicRepository/). Please load FileMan(Bundle) from StORE.

## Installation ##

### Squeak
```
Installer squeaksource
    project: 'MetacelloRepository';
    install: 'ConfigurationOfFileMan'. 
(Smalltalk at: #ConfigurationOfFileMan) perform: #load.
```

### Pharo
```
Gofer it
      url: 'http://squeaksource.com/MetacelloRepository';
      package: 'ConfigurationOfFileMan';
      load.
(Smalltalk at: #ConfigurationOfFileMan) perform: #load.
```

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