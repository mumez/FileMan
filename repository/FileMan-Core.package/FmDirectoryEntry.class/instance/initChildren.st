private
initChildren
	| dir |
	dir := self pathName.
	self exists ifFalse: [^children := #()].
	children := self entriesIn: dir from: self.
	^children