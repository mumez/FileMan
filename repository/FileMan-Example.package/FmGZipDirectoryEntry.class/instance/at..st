dictionary-like
at: localFileName
	| fName |
	fName := self asSuffixedName: localFileName.
	^(super at: fName) asString convertFromWithConverter: self textConverterClass new