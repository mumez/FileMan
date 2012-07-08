initialize-release
pathComponents: aCollection detectDrive: detectDrive
	| tokens firstToken  |
	aCollection isEmptyOrNil ifTrue: [^pathComponents := nil].
	tokens := aCollection.
	(detectDrive and: [(firstToken := aCollection first) isDriveName])
		ifTrue: [self drive: firstToken.
			self
				basicPathComponents: (tokens copyFrom: 2 to: tokens size)]
		ifFalse: [self basicPathComponents: tokens].

	pathComponents ifNotEmpty: [self name: pathComponents last]