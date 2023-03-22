private
assureExistenceFileNamed: localName
	
	localName isEmpty ifTrue: [ ^self ]. "Assumed to exist"
	(self fileAccessor fileOrDirectoryExists: localName in: self pathName) ifTrue: [^ self]. "exists"

	"otherwise check parent first and then create local dir"
	self parent ifNotNil: [:p | p assureExistenceFileNamed: self name].

	self fileAccessor createDirectory: (self / localName) pathName