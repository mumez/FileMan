dictionary-like
binaryAt: localFileName put: contents 
	(self includesKey: localFileName)
		ifTrue: [super binaryAt: localFileName , '.bak' put: (self binaryAt: localFileName)].
	super binaryAt: localFileName put: contents