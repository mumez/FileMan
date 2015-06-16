*fileman-core-converting
asDriveName

	FmFileIOAccessor default onWindows ifTrue: [
		self beginsWithWindowsDriveName ifTrue: [ 
		^self copyFrom: 1 to: 2 ]].

	(FmFileIOAccessor default onMac) ifTrue: [ 
		^self upToFirstPathSeparator ]