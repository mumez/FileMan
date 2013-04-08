private
bareEntryFromArray: array
	^DirectoryEntry name: (array at: 1) creationTime: (array at: 2) modificationTime: (array at: 3) isDirectory: (array at: 4) fileSize: (array at: 5) 