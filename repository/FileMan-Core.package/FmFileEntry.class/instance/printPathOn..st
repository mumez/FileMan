printing
printPathOn: aStream 
	self drive
		ifNotNilDo: [:d | aStream nextPutAll: d].
	aStream nextPutAll: self slash.
	self pathComponents
		do: [:each | aStream nextPutAll: each]
		separatedBy: [aStream nextPutAll: self slash]