actions-pipe
pipeRepeat: filterBlock while: terminateBlock to: aFileEntryOrString 
	| nextEntry inStream outStream |
	nextEntry := aFileEntryOrString asFileEntry.
	[inStream := self readStream.
	outStream := nextEntry writeStream.
	[terminateBlock value: inStream value: outStream]
		whileTrue: [filterBlock value: inStream value: outStream]]
		ensure: [inStream close.
			outStream close].
	^nextEntry