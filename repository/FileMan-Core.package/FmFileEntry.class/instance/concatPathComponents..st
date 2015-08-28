actions-path
concatPathComponents: components
	| entry entryComponents parentEntry |
	components ifEmpty: [ ^self ].
	parentEntry := self isRoot ifFalse: [ self ].
	entryComponents := self pathComponents.
	components do: [ :eachComponent |
		entryComponents := entryComponents copyWith: eachComponent.
		entry := self fileEntryClass pathComponents: entryComponents drive: self drive.
		parentEntry ifNotNil: [
			entry setParent: parentEntry asDirectoryEntry ].
		parentEntry := entry ].
	^entry