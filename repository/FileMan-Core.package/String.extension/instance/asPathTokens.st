*fileman-core-converting
asPathTokens
	| tokens |
	tokens := self findTokens: '\:/'.
	^tokens