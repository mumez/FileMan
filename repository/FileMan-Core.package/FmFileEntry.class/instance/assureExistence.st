enumeration
assureExistence
	self exists ifTrue: [^self].
	self parent assureExistence.
	self writeStream close