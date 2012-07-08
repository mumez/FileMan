*fileman-core-accessing
indexOfLastPathSeparator
	self reverse
		doWithIndex: [:each :idx | each isPathSeparator
				ifTrue: [^ (self size - idx) + 1]].
	^ 0