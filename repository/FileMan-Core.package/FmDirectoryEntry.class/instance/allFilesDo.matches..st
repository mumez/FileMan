enumeration
allFilesDo: aBlock matches: selectionBlock
	self childrenDo: 
		[:child | 
		child isFile
			ifTrue: [(selectionBlock value: child) ifTrue: [aBlock value: child]]
			ifFalse: [child allFilesDo: aBlock matches: selectionBlock]]