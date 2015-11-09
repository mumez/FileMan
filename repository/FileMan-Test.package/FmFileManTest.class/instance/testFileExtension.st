testing
testFileExtension
	"FmFileManTest debug: #testFileExtension" 
	| fileEntry1 fileEntry2 fileEntry3 fileEntry4 fileEntry5 fileEntry6 fileEntry7 |
	fileEntry1 := 'test.txt' asFileEntry.
	self assert: (fileEntry1 extension) = 'txt'.
	fileEntry2 := 'test.001.txt' asFileEntry.
	self assert: (fileEntry2 extension) = 'txt'.
	fileEntry3 := 'test' asFileEntry.
	self assert: (fileEntry3 extension) = ''.
	fileEntry4 := 'aaa.bbb.ccc.ddd' asFileEntry.
	self assert: (fileEntry4 extension) = 'ddd'.
	
	fileEntry5 := '.test' asFileEntry.
	self assert: (fileEntry5 extension) = ''.
	fileEntry6 := '.test.txt' asFileEntry.
	self assert: (fileEntry6 extension) = 'txt'.
	fileEntry7 := '.aaa.bbb.ccc.ddd' asFileEntry.
	self assert: (fileEntry7 extension) = 'ddd'.