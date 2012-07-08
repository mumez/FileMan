actions-path
concatPathComponents: components 
	^ self fileEntryClass pathComponents: (self pathComponents copy addAll: components;
			 yourself) drive: self drive