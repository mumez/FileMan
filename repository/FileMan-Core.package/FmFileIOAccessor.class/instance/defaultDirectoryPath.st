accessing
defaultDirectoryPath
	"Answer the value of defaultDirectoryPath"
	defaultDirectoryPath ifNil: [self initDefaultDirectoryPath].
	^ defaultDirectoryPath