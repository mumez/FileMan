accessing
drives
	self onUnix ifTrue: [^#()].
	^(self bareEntriesIn: '') collect: [:each | each name]