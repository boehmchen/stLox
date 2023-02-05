private
peekNext
	"comment stating purpose of message"

	(current + 1 >= source size)
		ifTrue: [^ '\0'].
	
	^ self source at: current + 1