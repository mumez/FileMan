file stream creation
newFileNamed: fullPathName
	"Create a new file with the given name in this directory."

	^ self concreteStreamClass newFileNamed: fullPathName
