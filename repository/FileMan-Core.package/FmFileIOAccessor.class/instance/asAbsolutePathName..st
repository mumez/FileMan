actions
asAbsolutePathName: aString
	"Not complete, but in most cases it is OK"

	| tokens curDir childPath |

	aString isRelativePathName ifFalse: [^aString].

	aString = '.' ifTrue: [^self defaultDirectoryPath].
	aString = '..' ifTrue: [^self containingDirectoryPathOf: self defaultDirectoryPath].

	tokens := aString asPathTokens.

	curDir := self defaultDirectoryPath.
	tokens reverseDo: [:each |
		each = '..' ifTrue: [curDir := self containingDirectoryPathOf: curDir]
	].

	tokens removeAllSuchThat: [:each | #('.' '..') includes: each ].
	childPath := WriteStream on: String new.
	tokens do: [:each | childPath nextPutAll: each]
					separatedBy: [childPath nextPutAll: self slash].
		
	^curDir, self slash, childPath contents