actions-file
rename: newName
	
	self fileAccessor rename: self pathName to: (self parent / newName) pathName.
	self name: newName