actions
directoryExists: localName in: directoryFullPath

	| dirNames |
	dirNames := self directoryNamesIn: directoryFullPath.

	^self isCaseSensitive 
		ifTrue:[dirNames includes: localName]
		ifFalse:[dirNames anySatisfy: [:name| name sameAs: localName]].