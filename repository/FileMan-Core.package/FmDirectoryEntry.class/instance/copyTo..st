actions-directory
copyTo: aDirectoryEntryOrString 
	| fileEnt toDir |
	fileEnt := aDirectoryEntryOrString asFileEntry.
	(self fileAccessor fileExists: fileEnt pathName) ifTrue: [^self error: 'Cannot copy directory to file'].
	
	toDir := fileEnt asDirectoryEntry assureExistence.

	self
		filesDo: [:file | file copyTo: (toDir / file name)].
	
	self
		directoriesDo: [:dir | | copyToDir |
			copyToDir := toDir pathName / dir name.
			dir copyTo: copyToDir]