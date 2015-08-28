testing
testAbsolutePath
	"FmFileManTest debug: #testAbsolutePath"
	| dirEntry dirEntry1 dirEntry2 dirEntry3 dirEntry4 |
	dirEntry := '/' asDirectoryEntry.
	self should: [dirEntry = ':' asDirectoryEntry].
	self should: [dirEntry = '\' asDirectoryEntry].
	
	dirEntry1 := '/temp/' asDirectoryEntry.
	self should: [dirEntry1 = ':temp' asDirectoryEntry].
	self should: [dirEntry1 = '\temp' asDirectoryEntry].

	dirEntry2 := '/temp/a' asDirectoryEntry.
	self should: [dirEntry2 = ':temp:a' asDirectoryEntry].
	self should: [dirEntry2 = '\temp\a' asDirectoryEntry].

	dirEntry3 := 'C:/temp/b' asDirectoryEntry.
	self should: [dirEntry3 = 'C:\temp\b' asDirectoryEntry].
	self should: [dirEntry3 = 'C::temp:b' asDirectoryEntry].

	"Platform specific path tests"
	FmFileIOAccessor default onMac ifTrue: [
	dirEntry4 := 'Macintosh HD:tmp' asDirectoryEntry.
	self should: [dirEntry4 = 'Macintosh HD/tmp' asDirectoryEntry].
	self should: [dirEntry4 = 'Macintosh HD\tmp' asDirectoryEntry].
	].
	
	
	
	