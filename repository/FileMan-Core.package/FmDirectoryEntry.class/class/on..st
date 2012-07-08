instance creation
on: aFileDirectry 
	"FmDirectory on: FileDirectory default"
	
	| inst |
	inst := self pathName: aFileDirectry pathName.
	^ inst