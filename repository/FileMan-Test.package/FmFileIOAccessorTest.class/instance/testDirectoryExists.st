testing
testDirectoryExists
	"FmFileIOAccessorTest debug: #testDirectoryExists"
	| subDirString dirString |
	subDirString := 99999 atRandom asString.
	dirString := self defaultDirectoryPath, FmFileIOAccessor default slash, subDirString.

	FmFileIOAccessor default createDirectory: dirString.

	self should: [FmFileIOAccessor default directoryExists: dirString].
	self should: [FmFileIOAccessor default directoryExists: subDirString in: self defaultDirectoryPath].

	FmFileIOAccessor default deleteDirectory: dirString.

	self shouldnt: [FmFileIOAccessor default directoryExists: dirString].
	self shouldnt: [FmFileIOAccessor default directoryExists: subDirString in: self defaultDirectoryPath].