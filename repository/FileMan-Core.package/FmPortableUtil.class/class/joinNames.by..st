actions-string
joinNames: names by: aCharacter
	| stream |
	stream := WriteStream on: String new.
	names do: [ :each | stream nextPutAll: each ] separatedBy: [ stream nextPut: aCharacter ].
	^ stream contents