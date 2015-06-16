*fileman-core-testing
isAbsolutePathName
	| upperName |
	self isEmpty ifTrue: [^ false].
	self first isPathSeparator ifTrue: [^ true].
	upperName := self asUppercase.
	(FmFileIOAccessor default drives
			anySatisfy: [:each | (upperName beginsWith: each)
					and: [| nextPos | 
						nextPos := each size + 1 min: self size max: 1.
						(self at: nextPos) isPathSeparator ]]) ifTrue: [^ true].
	^ false