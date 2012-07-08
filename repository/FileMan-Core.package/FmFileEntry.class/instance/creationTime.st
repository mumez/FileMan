accessing
creationTime
	creationTime ifNil: [self initValuesFromParent].
	^creationTime