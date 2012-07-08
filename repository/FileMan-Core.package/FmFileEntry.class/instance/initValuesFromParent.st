private
initValuesFromParent
	| targets target |
	self ensureParent.
	self parent ifNil: [^self].

	targets := self isDirectory ifTrue: [self parent directories] ifFalse: [self parent files].
	target := targets detect: [:each | each = self] ifNone:[].

	self initValuesFrom: target.
	