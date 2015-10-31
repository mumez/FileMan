actions-string
splitNameVersionExtensionFor: fileName by: delimiterCharacter
	| tokens sz |
	tokens := self splitName: fileName by: delimiterCharacter.
	sz := tokens size.
	sz >= 3
		ifTrue: [ 
			| versionIndex |
			versionIndex := tokens size - 1.
			(tokens at: versionIndex) isAllDigits
				ifTrue: [ 
					tokens at: versionIndex put: (tokens at: versionIndex) asNumber.
					tokens size = 3 ifTrue: [ ^ tokens ].
					^ Array
						with: (self joinNames: (tokens copyFrom: 1 to: versionIndex - 1) by: delimiterCharacter)
						with: (tokens at: versionIndex)
						with: tokens last ]
				ifFalse: [ ^ Array with: (self joinNames: (tokens copyFrom: 1 to: versionIndex) by: delimiterCharacter) with: 0 with: tokens last ] ].
	sz = 2 ifTrue: [ ^ Array with: (tokens at: 1) with: 0 with: tokens last ].
	^ Array with: (tokens at: 1) with: 0 with: ''