file stream creation
forceNewFileNamed: fullPathName
	"Open the file with the given name in this directory for writing.  If it already exists, delete it first without asking."

	^ self concreteStreamClass forceNewFileNamed: fullPathName
