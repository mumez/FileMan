actions-pipe
pipeRepeat: filterBlock to: aFileEntryOrString 
	^self pipeRepeat: filterBlock while: [:in :out | in atEnd not] to: aFileEntryOrString 