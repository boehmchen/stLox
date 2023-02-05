private
isAlpha: c
	"comment stating purpose of message"

	^ (( c >= $a ) and: (c <= $z))
		or: (( c >= $A ) and: (c <= $Z))
		or: (c == $_)
		
	