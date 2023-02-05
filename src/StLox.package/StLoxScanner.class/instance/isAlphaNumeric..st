private
isAlphaNumeric: c
	"comment stating purpose of message"

	^ (self isAlpha: c) or: (self isDigit: c)