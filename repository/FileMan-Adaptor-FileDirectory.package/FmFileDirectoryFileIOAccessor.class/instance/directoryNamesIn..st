utilities
directoryNamesIn: fullPath
	"FmFileDirectoryFileIOAccessor default directoryNamesIn: 'D:\lang\Smalltalk\squeak\000Scallion'"
	
	^((self bareEntriesIn: fullPath) select: [:each | each isDirectory]) collect: [:each | each name]
	