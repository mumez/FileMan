private
asSuffixedName: localFileName
	^(localFileName endsWith: '.gz') ifTrue: [localFileName] ifFalse: [localFileName, '.gz'].