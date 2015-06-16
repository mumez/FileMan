actions
asAbsolutePathName: aString
	"Not complete, but in most cases it is OK"

	| tokens curDir childPath |
	tokens := aString asPathTokens.

	"Already an absolute path name? just normalize path separators"
	aString isAbsolutePathName ifTrue: [
		^String streamContents: [ :strm |
			aString first isPathSeparator ifTrue: [ strm nextPutAll: self slash ].
			tokens
				do: [ :each | strm nextPutAll: each ]
				separatedBy: [ strm nextPutAll: self slash ]]].

	aString = '.' ifTrue: [^self defaultDirectoryPath].
	aString = '..' ifTrue: [^self containingDirectoryPathOf: self defaultDirectoryPath].


	curDir := self defaultDirectoryPath.
	tokens reverseDo: [:each |
		each = '..' ifTrue: [curDir := self containingDirectoryPathOf: curDir]
	].

	tokens removeAllSuchThat: [:each | #('.' '..') includes: each ].
	childPath := WriteStream on: String new.
	tokens do: [:each | childPath nextPutAll: each]
					separatedBy: [childPath nextPutAll: self slash].
		
	^curDir, self slash, childPath contents