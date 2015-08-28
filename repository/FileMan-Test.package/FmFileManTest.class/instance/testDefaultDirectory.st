testing
testDefaultDirectory
	"
	FmFileManTest debug: #testDefaultDirectory
	"
	
	| pathComponents |

	self assert: '' asDirectoryEntry =  FmDirectoryEntry default.

	pathComponents := '' asDirectoryEntry pathComponents.
	self assert: pathComponents = FmDirectoryEntry default pathComponents