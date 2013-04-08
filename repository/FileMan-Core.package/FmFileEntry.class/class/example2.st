examples
example2
	"FmFileEntry example2"

	"FileMan's path representation is portable"
	('./subDir' asDirectoryEntry / 'aaa\bbb' / 'ccc' / 'ddd\eee' / 'fff:ggg') at: 'test1' put: 'Hello2!'.