private
setDriveNameAndPathComponentsFrom: rawPathString 
	|  guessedDriveName |

	rawPathString first isPathSeparator
		ifTrue: [^self pathComponents: (rawPathString asPathTokens)].

	guessedDriveName := rawPathString asDriveName.
	guessedDriveName isDriveName
		ifTrue: [ | targetPathString | 
			self drive: guessedDriveName.
			targetPathString := rawPathString copyFrom: guessedDriveName size + 1 to: rawPathString size.
			^self pathComponents: targetPathString asPathTokens].

	^self pathComponents: (self directoryEntryClass default pathComponents copyWith: rawPathString)