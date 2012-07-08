actions
rename: oldFileFullName to: newFileFullName 
	| selection |
	(self try: [self primRename: oldFileFullName asVmPathName to: newFileFullName asVmPathName]
			forFileNamed: oldFileFullName) ifTrue: [^ self].

	(self fileExists: oldFileFullName) ifFalse: [^ self error: 'Attempt to rename a non-existent file'].
	(self fileExists: newFileFullName)
		ifTrue: [selection := (PopUpMenu labels: 'delete old version
cancel')
						startUpWithCaption: 'Trying to rename a file to be
' , newFileFullName , '
and it already exists.'.
			selection = 1
				ifTrue: [self deleteFile: newFileFullName.
					^ self rename: oldFileFullName to: newFileFullName]].
	^ self error: 'Failed to rename file'