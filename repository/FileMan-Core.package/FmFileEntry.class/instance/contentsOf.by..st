private
contentsOf: aStream by: encoderName
	| str conts |
	[str := aStream.
	str isBinary ifFalse: [self fileAccessor encode: encoderName on: str]. 
	conts := str contents]
		ensure: [str
				ifNotNilDo: [:s | s close]].
	^ conts