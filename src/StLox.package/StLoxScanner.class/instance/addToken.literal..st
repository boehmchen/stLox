private
addToken: aTokenType literal: aLiteralObj
	| text |
	text := source from: start to: current.
	tokens put: (
		StLoxToken 
			withType: aTokenType
			lexeme: text
			literal: aLiteralObj
			line: line)