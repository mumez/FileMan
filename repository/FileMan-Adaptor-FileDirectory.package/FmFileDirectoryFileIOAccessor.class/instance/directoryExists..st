actions
directoryExists: fullPathName

	fullPathName = self slash ifTrue: [^true].

	^self basicDirectoryExists: fullPathName
	