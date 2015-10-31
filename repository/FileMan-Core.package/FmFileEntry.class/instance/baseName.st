accessing-file name
baseName
	| names |
	names := self dialectUtilClass splitName: self name by: self extensionDelimiter.
	names size = 1 ifTrue: [^names first].
	^self dialectUtilClass joinNames: (names copyFrom: 1 to: names size - 1) by: self extensionDelimiter.