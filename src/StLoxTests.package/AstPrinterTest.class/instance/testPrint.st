tests
testPrint
	"comment stating purpose of message"

	| printer print |
	
	printer := AstPrinter new.
	
	print := printer print: (
		Binary
			withLeft: (
				Unary
					withOperator: (Token withType: (TokenType minus) lexeme: '-' literal: nil line: 1)
					right: (Literal withValue: 123)
				)
			operator: (Token withType: (TokenType star) lexeme: '*' literal: nil line: 1)
			right: (Grouping withExpr: (Literal withValue: 45.67))
	).
	
	self assert: print = '(* (- 123) (group 45.67))'