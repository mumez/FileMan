dictionary-like
includesKey: fileName
	^super includesKey: (self asSuffixedName: fileName)