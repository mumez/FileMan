*FileMan-Overrides-Squeak
locateSourcesEntry
	"For Squeak 5.0 - Fixed not to use #String>>asDirectoryEntry (overridden by FileMan)"
	| sourcesFilename |
	sourcesFilename := SourceFileVersionString , FileDirectory dot , 'sources'.
	^ {Smalltalk vmPath. 
	FileDirectory default fullName, FileDirectory slash}
		detect: [ : each | (FileDirectory directoryEntryFor: (each , sourcesFilename)) notNil ]
		ifFound: [ : foundPath | FileDirectory directoryEntryFor: (foundPath , sourcesFilename) ]
		ifNone: [ nil ]