actions
deleteDirectory: fullPathName
	^[fullPathName asFileReference delete] on: Error do: [ :ex | 
		fullPathName asFileReference delete] "one retry"