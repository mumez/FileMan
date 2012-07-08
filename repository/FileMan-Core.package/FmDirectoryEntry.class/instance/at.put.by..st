dictionary-like
at: localFileName put: contents by: encoderName
	self assureExistence.
	self setContentsOf: (self fileAccessor forceNewFileNamed: (self / localFileName) pathName) to: contents by: encoderName.
	self refreshChildren.
	^contents