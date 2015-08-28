initialize-release
pathName: aString 
	| path tokens guessedDriveName |
	path := aString asAbsolutePathName.
	tokens := path findTokens: self slash.
	tokens ifEmpty: [^ nil].
	self isDriveSupported
		 ifTrue: [
			guessedDriveName := tokens first asDriveName.
			guessedDriveName isDriveName
				ifTrue: [
					self drive: guessedDriveName.
					tokens := tokens copyFrom: 2 to: tokens size.]].
	self pathComponents: tokens