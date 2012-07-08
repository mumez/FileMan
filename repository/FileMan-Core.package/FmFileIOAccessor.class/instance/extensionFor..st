utilities
extensionFor: localName 
	| delim index |
	delim := self extensionDelimiter.
	index := localName
				findLast: [:c | c = delim].
	^ index = 0
		ifTrue: ['']
		ifFalse: [localName copyFrom: index + 1 to: localName size]