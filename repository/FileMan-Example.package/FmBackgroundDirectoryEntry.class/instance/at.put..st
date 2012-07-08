dictionary-like
at: localFileName put: contents 
	contents size > 1024 * 1024
		ifTrue: [self at: localFileName putBackground: contents]
		ifFalse: [super at: localFileName put: contents]