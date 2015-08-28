testing
testConcatenation
	"
	FmFileManTest debug: #testConcatenation
	"
	| dir |
	dir := ('./subDir' asDirectoryEntry / 'aaa/bbb' / 'ccc' / 'ddd\eee' / 'fff:ggg').
	dir at: 'test1' put: 'RecursiveDeleted!'.

	self assert: dir name = 'ggg'.
	self assert: dir parent name = 'fff'.
	self assert: dir parent parent name = 'eee'.
	self assert: dir parent parent parent name = 'ddd'.
	self assert: dir parent parent parent parent name = 'ccc'.
	self assert: dir parent parent parent parent parent name = 'bbb'.
	self assert: dir parent parent parent parent parent parent name = 'aaa'.

	'./subDir' asDirectoryEntry recursiveDelete.
	self shouldnt: [dir exists].
	self shouldnt: ['./subDir' asDirectoryEntry exists].