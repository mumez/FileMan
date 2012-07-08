testing
testRename
	"FmFileManTest debug: #testRename" 
	| file1 |
	file1 := self randomFileName asFileEntry.
	file1 fileContents: 'ToBeRenamed'.

	self shouldnt: [file1 name = 'newName1'].

	file1 rename: 'newName1'.

	self should: [file1 name = 'newName1'].
	self should: [file1 exists].

	self should: [file1 fileContents = 'ToBeRenamed'].

	file1 delete.
	self should: [file1 exists not].
	