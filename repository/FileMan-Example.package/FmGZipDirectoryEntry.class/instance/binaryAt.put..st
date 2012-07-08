dictionary-like
binaryAt: localFileName put: contents 
	| fName |
	fName := self asSuffixedName: localFileName.
	super binaryAt: fName put: contents 