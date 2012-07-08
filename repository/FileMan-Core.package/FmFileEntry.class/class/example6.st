examples
example6
	"FmFileEntry example6"
	
	"test1 file contents will be written to test2 using reverse filter.
	 test2 file contents will be written to test3 again using reverse filter."

	| reverseFilter |
	'test1.txt' fileContents: 'This is a test'.
	reverseFilter := [:in :out | out nextPutAll: (in upToEnd reverse)].

	('test1.txt' asFileEntry pipe: reverseFilter to: 'test2.txt')
		pipe: reverseFilter to: 'test3.txt'.

	(#('test1.txt' 'test2.txt' 'test3.txt') collect: [:each | each fileContents]) inspect

	