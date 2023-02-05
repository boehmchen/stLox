initialize-release
initialize
	tokens := OrderedCollection new.
	start := 1.
	current := 1.
	line := 1.
	
	self initializeKeywords
	