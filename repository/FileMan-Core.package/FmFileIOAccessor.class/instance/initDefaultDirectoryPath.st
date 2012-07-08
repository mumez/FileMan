initialize-release
initDefaultDirectoryPath
	| dir |
	dir := Preferences startInUntrustedDirectory
				ifTrue: [SecurityManager default untrustedUserDirectory]
				ifFalse: [self imageDirectoryPath].
	self initDefaultDirectoryPathWith: dir