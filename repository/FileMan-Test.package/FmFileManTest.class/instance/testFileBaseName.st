testing
testFileBaseName
	"FmFileManTest debug: #testFileBaseName" 
	| fileEntry1 fileEntry2 fileEntry3 fileEntry4 fileEntry5 fileEntry6 fileEntry7 |
	fileEntry1 := 'test.txt' asFileEntry.
	self assert: (fileEntry1 baseName) = 'test'.
	fileEntry2 := 'test.001.txt' asFileEntry.
	self assert: (fileEntry2 baseName) = 'test.001'.
	fileEntry3 := 'test' asFileEntry.
	self assert: (fileEntry3 baseName) = 'test'.
	fileEntry4 := 'aaa.bbb.ccc.ddd' asFileEntry.
	self assert: (fileEntry4 baseName) = 'aaa.bbb.ccc'.
	
	fileEntry5 := '.test' asFileEntry.
	self assert: (fileEntry5 baseName) = '.test'.
	fileEntry6 := '.test.txt' asFileEntry.
	self assert: (fileEntry6 baseName) = '.test'.
	fileEntry7 := '.aaa.bbb.ccc.ddd' asFileEntry.
	self assert: (fileEntry7 baseName) = '.aaa.bbb.ccc'.