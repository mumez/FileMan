dictionary-like
binaryAt: localFileName
	| fName |
	fName := self asSuffixedName: localFileName.
	^super binaryAt: fName