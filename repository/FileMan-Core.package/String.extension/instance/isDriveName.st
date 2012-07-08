*fileman-core-testing
isDriveName
	FmFileIOAccessor default onWindows
		ifTrue: [^ (self size between: 2 and: 3)
				and: [(self second = $:)
						and: [self first asCharacter isDriveLetter]]].

	FmFileIOAccessor default onMac ifTrue: [^FileDirectory root directoryNames includes: self].

	^false