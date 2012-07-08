dictionary-like
removeKey: localFileName ifAbsent: failBlock
	^self asDirectoryEntry removeKey: localFileName asString ifAbsent: failBlock