enumeration
allDirectoriesDo: aBlock
	self directoriesDo: 
		[:child | 
		aBlock value: child.
		child allDirectoriesDo: aBlock]