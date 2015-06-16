testing
testPathComponents
	"
	FmFileManTest debug: #testPathComponents
	"
	| pathComponents |

	pathComponents := './aaa/bbb\ccc:ddd' asDirectoryEntry pathComponents.
	pathComponents := pathComponents last: 4.
	self assert: pathComponents asArray = #('aaa' 'bbb' 'ccc' 'ddd').

	pathComponents := '/aaa/bbb\ccc:ddd' asDirectoryEntry pathComponents.
	pathComponents := pathComponents last: 4.
	self assert: pathComponents asArray = #('aaa' 'bbb' 'ccc' 'ddd').

	pathComponents := 'aaa/bbb\ccc:ddd' asDirectoryEntry pathComponents.
	pathComponents := pathComponents last: 4.
	self assert: pathComponents asArray = #('aaa' 'bbb' 'ccc' 'ddd')