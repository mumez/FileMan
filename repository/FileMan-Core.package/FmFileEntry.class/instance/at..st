dictionary-like
at: localFileName 
	^self asDirectoryEntry at: localFileName asString ifAbsent:[]