dictionary-like
binaryAt: localFileName ifAbsent: block 
	^ [self binaryAt: localFileName]
		on: FmFileIOAccessor fileDoesNotExistException
		do: [:ex | block value]