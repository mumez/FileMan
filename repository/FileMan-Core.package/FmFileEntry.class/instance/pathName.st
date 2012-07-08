accessing
pathName
	| str |
	str := String new writeStream.
	self printPathOn: str.
	^str contents