private
match: aCharacter
	"comment stating purpose of message"

	self isAtEnd ifTrue: [^ false].
	(source at: current) == aCharacter ifFalse: [^ false].
	
	current := current + 1.
	^ true. 