accessing
librarySpecificClass
	^ librarySpecificClass
		ifNil: [| subclasses |
			subclasses := self subclasses.
			subclasses notEmpty
				ifTrue: [librarySpecificClass := subclasses at: 1]]