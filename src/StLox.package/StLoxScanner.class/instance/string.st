private
string
	"Scan a string"
	
	| value |
	
	[(self peek ~=  $" ) and: (self isAtEnd not)]
	whileTrue: [
		"If find linebreak increase line count"
		self peek == Character cr
			ifTrue: [
				line := line + 1].
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
	value := source copyFrom: start + 1 to: current - 2. " -1 due to inclusive and -1 due to quotation mark."
	
	self addToken: StLoxTokenType literal: value.
	
	