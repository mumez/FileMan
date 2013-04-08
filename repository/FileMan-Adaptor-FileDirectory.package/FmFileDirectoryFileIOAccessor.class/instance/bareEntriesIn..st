private
bareEntriesIn: fullPath
	"FmFileDirectoryFileIOAccessor default bareEntriesIn: ''"
	| entries index done entryArray |
	entries := OrderedCollection new: 200.
	index := 1.
	done := false.
	[done] whileFalse: [
		entryArray := self lookupEntryIn: fullPath index: index.
		#badDirectoryPath = entryArray ifTrue: [
			^#()].
		entryArray == nil
			ifTrue: [done := true]
			ifFalse: [entries addLast: (self bareEntryFromArray: entryArray)].
		index := index + 1].

	^ entries asArray collect: [:s | s convertFromSystemName].