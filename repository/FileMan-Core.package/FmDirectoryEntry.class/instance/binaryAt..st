dictionary-like
binaryAt: localFileName 
	^self contentsOf: (self fileAccessor readOnlyFileNamed: (self / localFileName) pathName) binary