examples
example3
	"FmFileEntry example3"

	"Remove 'test1' file created exapmle2"
	('./subDir' asDirectoryEntry / 'aaa\bbb' / 'ccc' / 'ddd\eee' / 'fff:ggg') removeKey: 'test1'.

	"Recursive delete"
	'./subDir' asDirectoryEntry recursiveDelete