dictionary-like
removeKey: localFileName ifAbsent: failBlock
	super removeKey: (self asSuffixedName: localFileName) ifAbsent: failBlock