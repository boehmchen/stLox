as yet unclassified
withType: aTokenType lexeme: aLexeme literal: aLiteral line: aLineNumber
	"comment stating purpose of message"
	
	^ (self new)
		tokenType: aTokenType;
		lexeme: aLexeme;
		literal: aLiteral;
		line: aLineNumber.
		