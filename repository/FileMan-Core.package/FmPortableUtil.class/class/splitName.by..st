actions-string
splitName: aString by: aCharacter
	| stream tokens subStringStream |
	stream := aString readStream.
	tokens := OrderedCollection new.
	subStringStream := WriteStream on: String new.
	stream peek = aCharacter
		ifTrue: [ subStringStream nextPut: stream next ].
	[ stream atEnd ]
		whileFalse: [ 
			| char |
			char := stream next.
			char = aCharacter
				ifTrue: [ 
					tokens add: subStringStream contents.
					subStringStream := WriteStream on: String new ]
				ifFalse: [ subStringStream nextPut: char ] ].
	tokens add: subStringStream contents.
	^ tokens