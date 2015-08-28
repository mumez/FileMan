testing
testIsRelativePathName
	"
	FmFileManTest debug: #testIsRelativePathName
	"
	self assert: './' isRelativePathName.
	self assert: '../' isRelativePathName.
"	self assert: 'afile' isRelativePathName."
	self deny: '/' isRelativePathName.
	self deny: '/temp/' isRelativePathName.
	self deny: '/temp/a' isRelativePathName.
	self deny: 'C:/temp/b' isRelativePathName.
	self deny: 'Macintosh HD/tmp' isRelativePathName.