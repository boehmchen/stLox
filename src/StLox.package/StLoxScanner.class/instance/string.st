private
string
	"Scan a string"
	
	| value |
	
	[(self peek ==  $" ) and: (self isAtEnd not)]
	whileTrue: [
		self peek == Character cr
			ifTrue: [line := line + 1].
		
		self advance
	].

	self isAtEnd
		ifTrue: [
			StLox error: line message: 'Unterminated string.'.
			^ self
		].

	"The closing quotation mark"
	self advance.
	
	"Trim the surrounding quotes"
	value := source copyFrom: start + 1 to: current - 1.
	
	self addToken: StLoxTokenType literal: value.
	
	