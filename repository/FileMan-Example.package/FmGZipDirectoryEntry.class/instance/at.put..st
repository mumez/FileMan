dictionary-like
at: localFileName put: contents 
	| fName |
	fName := self asSuffixedName: localFileName.
	super at: fName put: contents 