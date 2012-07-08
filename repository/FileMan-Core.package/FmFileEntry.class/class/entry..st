instance creation
entry: bareFileEntry
	| inst |
	inst := bareFileEntry isDirectory ifTrue: [self directoryEntryClass new] ifFalse: [self fileEntryClass new].
	inst isDirectory: bareFileEntry isDirectory.
	inst name: bareFileEntry name.
	inst initValuesFrom: bareFileEntry.
	^inst