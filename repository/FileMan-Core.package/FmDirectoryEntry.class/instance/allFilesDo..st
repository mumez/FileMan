enumeration
allFilesDo: aBlock
	self childrenDo: 
		[:child | 
		child isFile ifTrue: [aBlock value: child] ifFalse: [child allFilesDo: aBlock]]