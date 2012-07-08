actions-directory
rename: newName
	
	self fileAccessor renameDirectory: self pathName to: (self parent / newName) pathName.
	self name: newName