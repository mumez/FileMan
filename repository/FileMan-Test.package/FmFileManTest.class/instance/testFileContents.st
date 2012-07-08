testing
testFileContents
	"FmFileManTest debug: #testFileContents" 
	| file1 file2 bytes |
	file1 := self randomFileName asFileEntry.
	file1 fileContents: 'This is a test'.
	self should: [file1 fileContents = 'This is a test'].
	file1 delete.
	self should: [file1 exists not].

	file2 := self randomFileName asFileEntry.
	bytes := #(1 2 3 4 5 6) asByteArray.
	file2 fileContents: bytes.
	self should: [file2 fileContents = bytes asString].
	self should: [file2 binaryContents = bytes].
	file2 delete.
	self should: [file2 exists not]