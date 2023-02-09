private
number
	"Scan a number"
	| value |

	"While finding digits advance the scan"
	[self isDigit: self peek] 
		whileTrue: [self advance].
		
	"Consume the . by stepping over it"
	((self peek == $.) and: ( self isDigit: self peekNext))
		ifTrue: [			
			self advance.
			[self isDigit: self peek] whileTrue: [self advance]].
		
	value := (self source copyFrom: start to: current - 1) asNumber.
	
	self addToken: TokenType number literal: value.