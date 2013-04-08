initialize-release
initDefaultDirectoryPath
	| dir |
	dir := [Preferences startInUntrustedDirectory
				ifTrue: [SecurityManager default untrustedUserDirectory]
				ifFalse: [self imageDirectoryPath]] on: MessageNotUnderstood do: [:ex | ex return: self imageDirectoryPath].
	self initDefaultDirectoryPathWith: dir