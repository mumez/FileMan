*fileman-core-testing
beginsWithDriveLetter
	self size < 2 ifTrue: [^false].
	^self first isDriveLetter and: [self second isDriveSeparator ]