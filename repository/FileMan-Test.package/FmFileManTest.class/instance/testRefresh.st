testing
testRefresh
	"FmFileManTest debug: #testRefresh" 
	| file1 |
	file1 := self randomFileName asFileEntry.

	file1 fileContents: '1234567890'.
	self should: [file1 fileSize = 10].

	file1 fileContents: '123'.
	self should: [file1 fileSize = 3].
	

	file1 delete.
	self should: [file1 exists not].
	