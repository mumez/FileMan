utilities
entryNamesIn: fullPath
	| ents |
	ents := [(fullPath asFileReference entries)] on: DirectoryDoesNotExist do: [:ex | ex return: #()].
	^ents collect: [:each | each basename ]