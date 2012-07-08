accessing-stream
appendStreamContents: blockWithArg 
	| stream |
	stream := self appendStream.
	[blockWithArg value: stream]
		ensure: [stream
				ifNotNilDo: [:s | s close]]