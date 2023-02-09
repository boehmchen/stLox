private
visitUnaryExpr: anUnaryExpr
	"comment stating purpose of message"
	
	|exprs|
	
	exprs := Array
		with: anUnaryExpr right.

	^ self parenthesize: (anUnaryExpr operator lexeme) exprs: exprs.