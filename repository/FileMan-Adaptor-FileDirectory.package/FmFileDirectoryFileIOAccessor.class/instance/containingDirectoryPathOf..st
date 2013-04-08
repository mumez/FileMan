private
containingDirectoryPathOf: pathName 
	| lastIndex |
	lastIndex := 0.
	(((pathName isNil
			or: [pathName isEmpty])
			or: [pathName isPathSeparator])
			or: [pathName isDriveName])
		ifTrue: [^ nil].
	'\:/' do: [:each | lastIndex := ( pathName lastIndexOf: each) max: lastIndex].
	^ pathName copyFrom: 1 to: lastIndex - 1