examples
example1
	"FmFileEntry example1"

	"- Create subDirectory named: 'subDir'.
	 - Put a new file named: 'file1'.
	 - Write contents 'Hello! to that file'"

	"Traditional way"
	| subDir str |
	subDir := FileDirectory default directoryNamed: 'subDir'.
	subDir assureExistence.
	[str := subDir newFileNamed: 'file1'.
	str nextPutAll: 'Hello!']
		ensure: [str close].

	"FileMan"

	'./subDir' asDirectoryEntry at: 'file2' put: 'Hello!'