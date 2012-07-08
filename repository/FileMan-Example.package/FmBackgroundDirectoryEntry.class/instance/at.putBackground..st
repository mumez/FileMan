dictionary-like
at: localFileName putBackground: contents 
	self assureExistence.
	[self setContentsOf: (self fileAccessor forceNewFileNamed: (self / localFileName) pathName) to: contents.
	self refreshChildren] forkAt: Processor userBackgroundPriority.
	^contents