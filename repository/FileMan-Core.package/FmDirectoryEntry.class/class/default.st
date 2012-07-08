instance creation
default 
	"FmDirectoryEntry default"
	^self directoryEntryClass pathName: FmFileIOAccessor defaultDirectoryPath
	