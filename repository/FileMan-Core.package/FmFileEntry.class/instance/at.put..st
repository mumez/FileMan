dictionary-like
at: localFileName put: contents
	^self asDirectoryEntry at: localFileName asString put: contents