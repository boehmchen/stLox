private
visitBinaryExpr: aBinaryExpr
	"comment stating purpose of message"
	
	|exprs|
	
	exprs := Array
		with: aBinaryExpr left
		with: aBinaryExpr right.

	^ self parenthesize: (aBinaryExpr operator lexeme) exprs: exprs.