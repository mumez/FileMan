actions
renameDirectory: oldFileFullName to: newFileFullName 
	| selection |
	(self try: [self primRename: oldFileFullName asVmPathName to: newFileFullName asVmPathName]
			forFileNamed: oldFileFullName) ifTrue: [^ self].

	(self directoryExists: oldFileFullName) ifFalse: [^ self error: 'Attempt to rename a non-existent file'].
	(self directoryExists: newFileFullName)
		ifTrue: [selection := (PopUpMenu labels: 'delete old version
cancel')
						startUpWithCaption: 'Trying to rename a directory to be
' , newFileFullName , '
and it already exists.'.
			selection = 1
				ifTrue: [newFileFullName asDirectoryEntry recursiveDelete.
					^ self renameDirectory: oldFileFullName to: newFileFullName]].
	^ self error: 'Failed to rename file'