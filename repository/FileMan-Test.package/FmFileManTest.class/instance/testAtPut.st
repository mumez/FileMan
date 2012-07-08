testing
testAtPut
	"FmFileManTest debug: #testAtPut" 
	| dir bytes |
	dir := self directoryEntryForTest.
	dir at: 'test1' put: 'Hello'.
	self should: [(dir at: 'test1') = 'Hello'].
	self should: [dir includesKey: 'test1'].

	bytes := #(1 2 3 4 5 6) asByteArray.
	dir binaryAt: 'test2' put: bytes.
	self should: [(dir binaryAt: 'test2') = bytes].
	self should: [dir includesKey: 'test2'].

	dir removeKey: 'test1'.

	self shouldnt: [dir includesKey: 'test1'].

	dir recursiveDelete.
	self should: [dir exists not]