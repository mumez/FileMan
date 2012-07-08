private
imageDirectoryPath
	"Note that pathname is not encoded"
	| imagePath lastIndex |
	imagePath := self primImagePath.
	lastIndex := imagePath lastIndexOf: self pathNameDelimiter.
	^ imagePath copyFrom: 1 to: lastIndex