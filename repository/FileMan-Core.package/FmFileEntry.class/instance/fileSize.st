accessing
fileSize
	fileSize ifNil: [self initValuesFromParent].
	^fileSize