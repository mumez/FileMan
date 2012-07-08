testing
testRecursiveDelete
	"FmFileManTest debug: #testRecursiveDelete" 
	| dir |
	dir := ('./subDir' / 'aaa\bbb' / 'ccc' / 'ddd\eee' / 'fff:ggg') asDirectoryEntry.
	dir at: 'test1' put: 'RecursiveDelete!'.
	self should: [(dir at: 'test1') = 'RecursiveDelete!'].

	dir removeKey: 'test1'.

	self shouldnt: [(dir / 'test1') exists].

	'./subDir' asDirectoryEntry recursiveDelete.
	self shouldnt: [dir exists].
	self shouldnt: ['./subDir' asDirectoryEntry exists].

	