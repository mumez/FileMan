private
containingDirectoryPathOf: pathName 

	(((pathName isNil
			or: [pathName isEmpty])
			or: [pathName isPathSeparator])
			or: [pathName isDriveName])
		ifTrue: [^ nil].
	^ pathName copyFrom: 1 to: pathName indexOfLastPathSeparator-1