starting up
onSystemStartUp
	self allSubInstancesDo: [:each | each refresh]