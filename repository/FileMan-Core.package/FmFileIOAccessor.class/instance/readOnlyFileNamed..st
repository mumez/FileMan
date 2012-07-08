file stream creation
readOnlyFileNamed: fullPathName
	"Open the existing file with the given name in this directory for read-only access."

	^ self concreteStreamClass readOnlyFileNamed: fullPathName
