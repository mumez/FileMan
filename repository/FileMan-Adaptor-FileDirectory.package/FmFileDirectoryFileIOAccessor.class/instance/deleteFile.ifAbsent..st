actions
deleteFile: fullPathName ifAbsent: failBlock 
	^(self
			try: [self primDeleteFileNamed: fullPathName asVmPathName]
			forFileNamed: fullPathName) 
		ifFalse: [^ failBlock value]