actions-file
copyTo: aFileEntryOrString 
	| targetEntry |
	(self fileAccessor directoryExists: self pathName) ifTrue: [^self asDirectoryEntry copyTo: aFileEntryOrString].
	
	targetEntry := aFileEntryOrString asFileEntry.
	targetEntry isDirectory
		ifTrue: [targetEntry := (targetEntry / self name) ensureAsFile].
	self assureExistence.
	targetEntry assureExistence.
	self fileAccessor copy: self pathName to: targetEntry pathName 

	