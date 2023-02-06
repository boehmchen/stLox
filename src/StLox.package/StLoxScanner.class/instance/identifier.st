private
identifier
	"comment stating purpose of message"
	
	| text tokenType |

	[self isAlphaNumeric: self peek]
		whileTrue: [self advance].
		
	text := self source copyFrom: start to: current - 1.
	
	tokenType := self keywords at: text ifAbsent: [StLoxTokenType identifier] value.
	self addToken: tokenType