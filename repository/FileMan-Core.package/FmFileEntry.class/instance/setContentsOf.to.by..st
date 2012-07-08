private
setContentsOf: aStream to: aStringOrBytes by: encoderName
	| str |
	[str := aStream.
	aStringOrBytes isString ifTrue: [self fileAccessor encode: encoderName on: str] ifFalse: [str binary].
	str nextPutAll: aStringOrBytes.
	self refresh]
		ensure: [str
				ifNotNilDo: [:s | s close]]