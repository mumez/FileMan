testing
testFileNameVersionExtension
	"FmFileManTest debug: #testFileNameVersionExtension" 
	| nameVersionExtension1 nameVersionExtension2 nameVersionExtension3 nameVersionExtension4 nameVersionExtension5 nameVersionExtension6 nameVersionExtension7 nameVersionExtension8 nameVersionExtension9 nameVersionExtension10 nameVersionExtension11 |
	nameVersionExtension1 := 'test.11.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension1 at: 1) = 'test'.
	self assert: (nameVersionExtension1 at: 2) = 11.
	self assert: (nameVersionExtension1 at: 3) = 'txt'.
	
	nameVersionExtension2 := 'test.001.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension2 at: 1) = 'test'.
	self assert: (nameVersionExtension2 at: 2) = 1.
	self assert: (nameVersionExtension2 at: 3) = 'txt'.
	
	nameVersionExtension3 := 'test.abc.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension3 at: 1) = 'test.abc'.
	self assert: (nameVersionExtension3 at: 2) = 0.
	self assert: (nameVersionExtension3 at: 3) = 'txt'.
	
	nameVersionExtension4 := 'test.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension4 at: 1) = 'test'.
	self assert: (nameVersionExtension4 at: 2) = 0.
	self assert: (nameVersionExtension4 at: 3) = 'txt'.
	
	nameVersionExtension5 := 'test' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension5 at: 1) = 'test'.
	self assert: (nameVersionExtension5 at: 2) = 0.
	self assert: (nameVersionExtension5 at: 3) = ''.
	
	nameVersionExtension6 := '.test.11.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension6 at: 1) = '.test'.
	self assert: (nameVersionExtension6 at: 2) = 11.
	self assert: (nameVersionExtension6 at: 3) = 'txt'.
	
	nameVersionExtension7 := '.test.001.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension7 at: 1) = '.test'.
	self assert: (nameVersionExtension7 at: 2) = 1.
	self assert: (nameVersionExtension7 at: 3) = 'txt'.
	
	nameVersionExtension8 := '.test.abc.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension8 at: 1) = '.test.abc'.
	self assert: (nameVersionExtension8 at: 2) = 0.
	self assert: (nameVersionExtension8 at: 3) = 'txt'.
	
	nameVersionExtension9 := '.test.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension9 at: 1) = '.test'.
	self assert: (nameVersionExtension9 at: 2) = 0.
	self assert: (nameVersionExtension9 at: 3) = 'txt'.
	
	nameVersionExtension10 := 'a.10.c.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension10 at: 1) = 'a.10.c'.
	self assert: (nameVersionExtension10 at: 2) = 0.
	self assert: (nameVersionExtension10 at: 3) = 'txt'.
	
	nameVersionExtension11 := 'a.12.11.txt' asFileEntry nameVersionExtension.
	self assert: (nameVersionExtension11 at: 1) = 'a.12'.
	self assert: (nameVersionExtension11 at: 2) = 11.
	self assert: (nameVersionExtension11 at: 3) = 'txt'.
	
	
	