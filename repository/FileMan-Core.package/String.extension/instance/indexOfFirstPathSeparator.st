*fileman-core-accessing
indexOfFirstPathSeparator
	self
		doWithIndex: [:each :idx | each isPathSeparator
				ifTrue: [^ idx]].
	^ 0