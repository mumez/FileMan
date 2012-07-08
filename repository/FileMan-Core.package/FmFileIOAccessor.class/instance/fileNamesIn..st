utilities
fileNamesIn: fullPath
	"FmFileAccessor default fileNamesIn: 'D:\lang\Smalltalk\squeak\000Scallion'"
	
	^((self bareEntriesIn: fullPath) reject: [:each | each isDirectory]) collect: [:each | each name]