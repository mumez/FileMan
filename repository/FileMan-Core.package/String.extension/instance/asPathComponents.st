*fileman-core-converting
asPathComponents
	| tokens |

	self isRelativePathName ifTrue: [self error: 'relative form is invaild!'].

	tokens := self asPathTokens.
	^tokens