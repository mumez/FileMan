examples
example5
	"FmFileEntry example5"
	
	"Write test1 file and copy it to test2 in the parent directory"

	'./test1' fileContents: 'This is a test'.
	'./test1' asFileEntry copyTo: '../test2'.

	'../test2' fileContents inspect