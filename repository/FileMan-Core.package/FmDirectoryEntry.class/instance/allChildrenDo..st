enumeration
allChildrenDo: aBlock
	self childrenDo: 
		[:child | 
		aBlock value: child.
		child allChildrenDo: aBlock]