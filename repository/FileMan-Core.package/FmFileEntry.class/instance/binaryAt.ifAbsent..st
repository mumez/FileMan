dictionary-like
binaryAt: localFileName ifAbsent: block
	^self asDirectoryEntry binaryAt: localFileName asString ifAbsent: block