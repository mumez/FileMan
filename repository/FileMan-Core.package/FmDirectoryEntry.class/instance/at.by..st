dictionary-like
at: localFileName by: encoderName
	^self contentsOf: (self fileAccessor readOnlyFileNamed: (self / localFileName) pathName) by: encoderName