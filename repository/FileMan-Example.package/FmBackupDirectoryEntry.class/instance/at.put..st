dictionary-like
at: localFileName put: contents 
	(self includesKey: localFileName)
		ifTrue: [super at: localFileName , '.bak' put: (self at: localFileName)].
	super at: localFileName put: contents