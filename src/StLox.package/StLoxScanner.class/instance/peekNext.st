private
peekNext
	"comment stating purpose of message"

	(current + 1 >= source size)
		ifTrue: [^ Character null].
	
	^ self source at: current + 1