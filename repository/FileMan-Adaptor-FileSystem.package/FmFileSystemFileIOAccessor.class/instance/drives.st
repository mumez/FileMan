accessing
drives
	| letters |
	letters := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' select: [ :each |
		(FileLocator perform: (each asSymbol)) exists
 	].
	^letters asArray collect: [ :each | String with: each with: $: ]