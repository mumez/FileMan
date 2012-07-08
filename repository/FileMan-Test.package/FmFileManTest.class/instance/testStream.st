testing
testStream
	"FmFileManTest debug: #testStream" 
	| file1 contents formerContents allContents |
	file1 := self randomFileName asFileEntry.
	file1 writeStreamContents: [:str | str nextPutAll: 'HELLO!'].
	contents := file1 readStreamContents: [:str | str upToEnd].
	self should: [contents = 'HELLO!'].

	file1 appendStreamContents: [:str | str nextPutAll: 'AGAIN!'].

	formerContents := file1 readStreamContents: [:str | str upTo:$!].
	self should: [formerContents = 'HELLO'].

	allContents := file1 readStreamContents: [:str | str upToEnd].
	self should: [allContents = 'HELLO!AGAIN!'].

	file1 delete.
	self should: [file1 exists not].
	