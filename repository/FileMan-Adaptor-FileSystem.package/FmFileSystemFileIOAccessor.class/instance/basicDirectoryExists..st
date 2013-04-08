private
basicDirectoryExists: fullPathName
	| ref |
	ref := fullPathName asFileReference.
	^ref exists and: [ref isDirectory]