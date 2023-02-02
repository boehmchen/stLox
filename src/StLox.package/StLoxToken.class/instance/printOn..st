printing
printOn: aStream
	super printOn: aStream.
	aStream << self tokenType << ' ' <<  self lexeme << ' ' << self literal
