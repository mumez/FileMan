accessing
parent
	parent ifNil: [parent := self ensureParent].
	^parent