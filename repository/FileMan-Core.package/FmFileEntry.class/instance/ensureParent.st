private
ensureParent
	self pathComponents isEmpty
		ifTrue: [^ nil].
	parent := self directoryEntryClass
				pathComponents: (self pathComponents copyFrom: 1 to: self pathComponents size - 1)
				drive: self drive.
	^ parent