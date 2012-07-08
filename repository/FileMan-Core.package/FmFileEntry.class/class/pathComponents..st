instance creation
pathComponents: comps
	| inst |
	inst := self new.
	inst pathComponents: comps.
	^inst

	