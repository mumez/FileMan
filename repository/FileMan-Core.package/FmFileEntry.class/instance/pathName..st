initialize-release
pathName: aString 
	| path tokens |
	path := aString asAbsolutePathName.
	tokens := path findTokens: self slash.
	tokens ifEmpty: [^ nil].
	(self onUnix and: [path beginsWithPathSeparator]) ifTrue: [
		^ self pathComponents: ((path beginsWith: '/') ifTrue: [tokens] ifFalse: [path asPathTokens])].
	tokens size = 1
		ifTrue: [
			path isPathSeparator ifTrue: [^self].
			self isDriveSupported
				 ifTrue: [^self setDriveNameAndPathComponentsFrom: aString].
			 ^self pathName: (self directoryEntryClass default concat: aString) pathName].
	self pathComponents: tokens