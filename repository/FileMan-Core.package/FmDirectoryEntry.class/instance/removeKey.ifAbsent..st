dictionary-like
removeKey: localFileName ifAbsent: failBlock
	self fileAccessor deleteFile: (self / localFileName) pathName ifAbsent: [^failBlock value].
	self refreshChildren.