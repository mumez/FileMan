actions-directory
assureExistence
	self isRoot ifTrue: [^self].
	self parent assureExistenceFileNamed: self name.
	^self