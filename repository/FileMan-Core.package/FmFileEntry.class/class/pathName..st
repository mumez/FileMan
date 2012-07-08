instance creation
pathName: aString
	| inst |
	inst := self new.
	inst pathName: aString.
	^inst

	