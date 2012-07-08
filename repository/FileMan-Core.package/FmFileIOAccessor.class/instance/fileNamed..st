file stream creation
fileNamed: fullPathName
	"Open the file with the given name in this directory for writing."

	^ self concreteStreamClass fileNamed: fullPathName
