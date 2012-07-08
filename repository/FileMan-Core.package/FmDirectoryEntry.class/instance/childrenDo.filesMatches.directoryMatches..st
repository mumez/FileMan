enumeration
childrenDo: aBlock filesMatches: selectionBlock directoryMatches: dirSelectionBlock
	self children do: [:each | 
		(each isFile and: [selectionBlock value: each]) 
			ifTrue: [aBlock value: each]
			ifFalse: [(each isDirectory and: [dirSelectionBlock value: each]) ifTrue: [aBlock value: each]]
	]