class initialization
obsolete
	self initDefault.
	self initLibrarySpecificClass.
	self initDialectUtilClass.
	self dialectUtilClass removeFromStartUpList: self.
	super obsolete.