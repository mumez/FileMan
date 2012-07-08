testing
testRoot
	"FmFileManTest debug: #testRoot"
	| root |
	root := FmDirectoryEntry root.
	self should: [root pathComponents isEmpty].
	self should: [root = '\' asDirectoryEntry]. 
	self should: [root = ':' asDirectoryEntry]. 
	self should: [root = '/' asDirectoryEntry]. 
	
	