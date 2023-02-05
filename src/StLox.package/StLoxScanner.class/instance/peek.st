private
peek
	"comment stating purpose of message"

	self isAtEnd ifTrue: [^ '\0'].
	^ source at: current