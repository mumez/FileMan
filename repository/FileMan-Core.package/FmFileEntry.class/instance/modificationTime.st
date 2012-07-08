accessing
modificationTime
	modificationTime ifNil: [self initValuesFromParent].
	^modificationTime