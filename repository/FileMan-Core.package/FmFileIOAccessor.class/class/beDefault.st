class initialization
beDefault
	| oldDefault |
	self = FmFileIOAccessor ifTrue: [^self]. "This method is for a subclass"
	oldDefault := FmFileIOAccessor default.
	oldDefault notNil ifTrue: [oldDefault dialectUtilClass removeFromStartUpList: oldDefault dialectUtilClass].
	Default := self new.
	FmFileIOAccessor default dialectUtilClass addToStartUpList: Default dialectUtilClass