dictionary-like
binaryAt: localFileName put: contents 
	^self at: localFileName put: contents asByteArray