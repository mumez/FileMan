dictionary-like
at: localFileName ifAbsent: block
	^self asDirectoryEntry at: localFileName asString ifAbsent: block