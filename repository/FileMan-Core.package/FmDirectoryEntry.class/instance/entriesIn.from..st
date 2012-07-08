private
entriesIn: directoryFullPath from: parentEntry 
	^ (self fileAccessor bareEntriesIn: directoryFullPath)
		collect: [:each | 
			| entry | 
			entry := self fileEntryClass entry: each.
			entry parent: parentEntry.
			entry]