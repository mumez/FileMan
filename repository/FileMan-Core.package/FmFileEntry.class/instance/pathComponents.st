accessing
pathComponents
	pathComponents ifNil: [pathComponents := OrderedCollection new].
	^pathComponents