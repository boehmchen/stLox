private
identifier
	"comment stating purpose of message"
	
	| text tokenType |

	(self isAlphaNumeric: self peek)
		ifTrue: [self advance].
		
	text := self source copyFrom: start to: current.
	
	tokenType := self keywords at: text ifAbsent: [StLoxTokenType identifier] value.
	self addToken: StLoxTokenType identifier