accessing-file name
extension
	| names |
	names := self dialectUtilClass splitName: self name by: self extensionDelimiter.
	names size = 1 ifTrue: [^''].
	^names last