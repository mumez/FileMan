*fileman-core-testing
beginsWithPathSeparator
	self ifEmpty: [^false].
	^self first isPathSeparator