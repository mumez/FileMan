accessing
file
	^self files ifEmpty: [] ifNotEmpty: [:fs | fs first]