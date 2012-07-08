instance creation
roots
	"For the systems having notion of drives"
	"FmDirectoryEntry roots"
	^ self drives
		ifEmpty: [Array with: self root]
		ifNotEmptyDo: [:drvs | drvs
				collect: [:each | each asFileEntry]]