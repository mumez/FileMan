dictionary-like
binaryAt: localFileName 
	^self asDirectoryEntry binaryAt: localFileName asString ifAbsent:[]