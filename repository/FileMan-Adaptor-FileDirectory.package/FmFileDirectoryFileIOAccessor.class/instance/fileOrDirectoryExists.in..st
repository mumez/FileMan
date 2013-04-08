actions
fileOrDirectoryExists: localName in: directoryFullPath

	| entryNames |
	entryNames := self entryNamesIn: directoryFullPath.

	^self isCaseSensitive 
		ifTrue:[entryNames includes: localName]
		ifFalse:[entryNames anySatisfy: [:name| name sameAs: localName]].