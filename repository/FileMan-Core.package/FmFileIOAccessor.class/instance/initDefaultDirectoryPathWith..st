initialize-release
initDefaultDirectoryPathWith: barePath
	| dirName |
	dirName := (FilePath pathName: barePath isEncoded: true) asSqueakPathName.

	[dirName endsWith: self slash] whileTrue:[
		dirName := dirName copyFrom: 1 to: dirName size - self slash size.
	].
	defaultDirectoryPath := dirName