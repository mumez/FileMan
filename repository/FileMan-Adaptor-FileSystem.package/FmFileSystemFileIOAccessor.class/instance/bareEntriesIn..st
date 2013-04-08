private
bareEntriesIn: fullPath
	^[fullPath asFileReference entries] on: DirectoryDoesNotExist do: [:ex | #()]