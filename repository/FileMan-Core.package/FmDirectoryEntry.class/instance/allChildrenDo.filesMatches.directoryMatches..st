enumeration
allChildrenDo: aBlock filesMatches: selectionBlock directoryMatches: dirSelectionBlock
	self childrenDo: 
		[:child | 
		(child isFile and: [selectionBlock value: child]) 
			ifTrue: [aBlock value: child]
			ifFalse: [(child isDirectory and: [dirSelectionBlock value: child]) ifTrue: [aBlock value: child]].
		child allChildrenDo: aBlock filesMatches: selectionBlock directoryMatches: dirSelectionBlock]