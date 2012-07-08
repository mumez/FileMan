accessing
drive
	self onUnix ifTrue: [^ drive := nil].
	drive
		ifNil: [drive := self currentDriveName].
	^ drive