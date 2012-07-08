testing
exists
	
	(self isDriveSupported and: [self pathComponents isEmpty])
		 ifTrue: [^self drives includes: self drive].

	self isRoot ifTrue: [^true].
	
	self fileAccessor onUnix ifFalse: [^self fileAccessor directoryExists: self pathName]. 
	
	^self fileAccessor directoryExists: self name in: self parent pathName