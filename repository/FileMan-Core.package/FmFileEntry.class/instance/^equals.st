comparing
= aFileEntry
	self class = aFileEntry class ifFalse: [^false].
	^self pathComponents = aFileEntry pathComponents