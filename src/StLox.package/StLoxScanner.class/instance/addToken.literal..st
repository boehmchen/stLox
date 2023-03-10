private
addToken: aTokenType literal: aLiteralObj
	| text |
	text := source copyFrom: start to: current - 1.
	tokens add: (
		Token 
			withType: aTokenType
			lexeme: text
			literal: aLiteralObj
			line: line)