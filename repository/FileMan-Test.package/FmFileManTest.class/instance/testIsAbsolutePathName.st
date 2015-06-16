testing
testIsAbsolutePathName
	"
	FmFileManTest debug: #testIsAbsolutePathName
	"
	self assert: '/' isAbsolutePathName.
	self assert: '/temp/' isAbsolutePathName.
	self assert: '/temp/a' isAbsolutePathName.
	self assert: 'C:/temp/b' isAbsolutePathName.
"	self assert: 'Macintosh HD/tmp' isAbsolutePathName."
	
	self deny: './' isAbsolutePathName.
	self deny: '../' isAbsolutePathName.
	self deny: 'afile' isAbsolutePathName.