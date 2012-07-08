actions-directory
delete
	self fileAccessor deleteDirectory: self pathName.
	self refreshChildren