utilities
baseNameFor: localName 
	| delim index |
	delim := self extensionDelimiter.
	index := localName
				findLast: [:c | c = delim].
	^ index = 0
		ifTrue: [localName]
		ifFalse: [localName copyFrom: 1 to: index - 1]