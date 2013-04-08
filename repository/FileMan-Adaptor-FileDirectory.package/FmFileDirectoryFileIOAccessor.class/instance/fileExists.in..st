actions
fileExists: localName in: directoryFullPath

	| fileNames |
	fileNames := self fileNamesIn: directoryFullPath.
	^self isCaseSensitive 
		ifTrue:[fileNames includes: localName]
		ifFalse:[fileNames anySatisfy: [:name| name sameAs: localName]].