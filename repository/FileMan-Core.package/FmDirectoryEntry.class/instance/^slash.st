actions-path
/ pathString
	| ent |
	ent := super / pathString.
	(((pathString select: [:e | e = $.]) size) = 1 and: [pathString anySatisfy: [:e | e isLetter]]) 
			ifTrue: [^ent ensureAsFile].
	^ ent