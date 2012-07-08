accessing-stream
appendStream
	self exists
		ifFalse: [^ self writeStream].
	^ (self fileAccessor fileNamed: self pathName) setToEnd