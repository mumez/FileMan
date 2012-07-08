accessing-stream
writeStreamConfirming
	self refresh.
	^self fileAccessor newFileNamed: self pathName