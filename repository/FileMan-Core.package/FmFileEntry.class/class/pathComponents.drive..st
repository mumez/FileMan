instance creation
pathComponents: comps drive: driveString
	| inst |
	inst := self new.
	inst pathComponents: comps detectDrive: false.
	inst drive: driveString.
	^inst

	