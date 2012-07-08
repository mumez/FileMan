*fileman-core-testing
isRelativeMark
	
	self = '.' ifTrue: [^true].
	self = '..' ifTrue: [^true].

	^false