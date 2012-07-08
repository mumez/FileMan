*fileman-core-converting
asDriveName
	(FmFileIOAccessor default onWindows and: [self beginsWithDriveLetter]) ifTrue: [
			^self copyFrom: 1 to: 2.
	].

	(FmFileIOAccessor default onMac) ifTrue: [ 
			^self upToFirstPathSeparator
	].

