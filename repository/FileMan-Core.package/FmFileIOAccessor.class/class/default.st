instance creation
default
	Default isNil
		ifTrue: [| fileLibClass |
			fileLibClass := self librarySpecificClass.
			fileLibClass notNil
				ifTrue: [Default := fileLibClass new]].
	^ Default