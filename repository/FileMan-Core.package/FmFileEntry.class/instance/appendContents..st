actions-file
appendContents: aStringOrBytes 
	self
		appendStreamContents: [:str | 
			aStringOrBytes isString
				ifFalse: [str binary].
			str nextPutAll: aStringOrBytes]