testing
exists
	| pathName |
	pathName := self parent ifNil: [''] ifNotNilDo: [:par | par pathName].
	^self fileAccessor fileExists: self name in: pathName