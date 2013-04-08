actions
fileExists: fullPathName

	| pathAndLocalName |
	pathAndLocalName := fullPathName pathAndLocalName.
	^self fileExists: pathAndLocalName last in: pathAndLocalName first