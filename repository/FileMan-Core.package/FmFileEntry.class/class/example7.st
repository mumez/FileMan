examples
example7
	"FmFileEntry example7"
	"Useful example: copy latest mcz files to releaseDir (for preparing SAR)"

	| releaseDir dir fileNames |
	releaseDir := './releasePkg' asDirectoryEntry.
	releaseDir keys isEmpty ifFalse: [releaseDir recursiveDelete].
	dir := './package-cache' asDirectoryEntry.
	fileNames := (dir keys collect: [:each | each name upTo: $.] thenSelect: [:each | each notEmpty]).
	(fileNames asSet
		collect: [:eachName | dir
				latestFileMatches: [:each | each name beginsWith: eachName]])
		do: [:eachEnt | eachEnt copyTo: releaseDir]