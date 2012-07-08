private
initValuesFrom: otherEntry
	otherEntry ifNil: [^self].
	self creationTime: otherEntry creationTime.
	self modificationTime: otherEntry modificationTime.
	self fileSize: otherEntry fileSize.
	