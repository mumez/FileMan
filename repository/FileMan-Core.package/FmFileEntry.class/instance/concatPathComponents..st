actions-path
concatPathComponents: components 
	| entry |
	components ifEmpty: [^self].

	entry := self fileEntryClass pathComponents: (self pathComponents copy addAll: components;
			 yourself) drive: self drive.

	self isRoot ifFalse: [
		entry parent: self asDirectoryEntry.
	].
	^entry