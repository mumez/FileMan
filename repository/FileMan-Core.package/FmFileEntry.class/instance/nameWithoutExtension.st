accessing-file name
nameWithoutExtension
	| nm index |
	nm := self name.
	index := nm lastIndexOf: $..
	index = 0 ifTrue: [^nm].
	nm first = $. ifTrue: [^nm].
	
	^self name copyFrom: 1 to: index - 1