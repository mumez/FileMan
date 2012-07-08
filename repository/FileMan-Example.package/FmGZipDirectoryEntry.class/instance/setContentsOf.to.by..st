private
setContentsOf: aStream to: aStringOrBytes by: ignore
	| conts |
	aStringOrBytes isString
		ifTrue: [| stream | 
			stream := RWBinaryOrTextStream on: (String new: aStringOrBytes size).
			aStringOrBytes do: [:each | self textConverterClass new nextPut: each toStream: stream].
			conts := stream contents]
		ifFalse: [aStream binary.
			conts := aStringOrBytes].
	super
		setContentsOf: (GZipWriteStream on: aStream)
		to: conts
		by: nil