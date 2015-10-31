accessing-file name
firstName
	| names |
	names := self dialectUtilClass splitName: self name by: self extensionDelimiter.
	^names first