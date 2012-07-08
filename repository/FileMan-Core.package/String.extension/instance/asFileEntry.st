*fileman-core-converting
asFileEntry
	self isRelativeMark ifTrue: [^self asDirectoryEntry].
	^FmFileEntry pathName: self