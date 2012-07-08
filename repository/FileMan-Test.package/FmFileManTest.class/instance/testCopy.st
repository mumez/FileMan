testing
testCopy
	"FmFileManTest debug: #testCopy" 
	| file1 file2 |
	file1 := self randomFileName asFileEntry.
	file2 := (file1 parent / self randomFileName) asFileEntry.

	file1 fileContents: 'This is a test'.

	self should: [file2 fileContents isEmpty].

	file1 copyTo: file2.

	self should: [file2 fileContents = 'This is a test'].

	file1 delete.
	file2 delete.
	self should: [file1 exists not].
	self should: [file2 exists not]
	
	
	