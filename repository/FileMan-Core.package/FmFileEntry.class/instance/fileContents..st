actions-file
fileContents: aStringOrBytes 
	aStringOrBytes isString
		ifTrue: [self textContents: aStringOrBytes]
		ifFalse: [self binaryContents: aStringOrBytes]