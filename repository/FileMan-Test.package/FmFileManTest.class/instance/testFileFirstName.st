testing
testFileFirstName
	"FmFileManTest debug: #testFileFirstName" 
	| fileEntry1 fileEntry2 fileEntry3 fileEntry4 fileEntry5 fileEntry6 fileEntry7 |
	fileEntry1 := 'test.txt' asFileEntry.
	self assert: (fileEntry1 firstName) = 'test'.
	fileEntry2 := 'test.001.txt' asFileEntry.
	self assert: (fileEntry2 firstName) = 'test'.
	fileEntry3 := 'test' asFileEntry.
	self assert: (fileEntry3 firstName) = 'test'.
	fileEntry4 := 'aaa.bbb.ccc.ddd' asFileEntry.
	self assert: (fileEntry4 firstName) = 'aaa'.
	
	fileEntry5 := '.test' asFileEntry.
	self assert: (fileEntry5 firstName) = '.test'.
	fileEntry6 := '.test.txt' asFileEntry.
	self assert: (fileEntry6 firstName) = '.test'.
	fileEntry7 := '.aaa.bbb.ccc.ddd' asFileEntry.
	self assert: (fileEntry7 firstName) = '.aaa'.