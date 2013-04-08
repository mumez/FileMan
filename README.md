FileMan
=======

FileMan is a thin wrapper for various Smalltalk file libraries. It provides simple, portable interfaces for manipulating files and directories.

Currently, FileMan can wrap three different Smalltalk file libraries.

- FileDirectory (Squeak)
- FileSystem (Pharo)
- Filename (VisualWorks) -- will be put to github soon


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