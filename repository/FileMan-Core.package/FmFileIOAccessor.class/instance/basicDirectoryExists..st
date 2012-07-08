private
basicDirectoryExists: fullPathName

	| result |
	result := self lookupEntryIn: fullPathName index: 1.
 	^result ~= #badDirectoryPath