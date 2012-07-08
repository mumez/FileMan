utilities
entryNamesIn: fullPath
	"FmFileIOAccessor default entryNamesIn: 'D:\lang\Smalltalk\squeak\000Scallion'"
	
	^(self bareEntriesIn: fullPath) collect: [:each | each name]