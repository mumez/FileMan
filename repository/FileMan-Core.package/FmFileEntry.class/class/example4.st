examples
example4
	"FmFileEntry example4"

	"Collect sm directory package names"
	| packageNames |
	packageNames := './sm/cache/packages' asDirectoryEntry directories collect: [:each | each directory file name].
	packageNames inspect