dictionary-like
at: localFileName ifAbsent: block 
	^ [self at: localFileName]
		on: FmFileIOAccessor fileDoesNotExistException
		do: [:ex | block value]