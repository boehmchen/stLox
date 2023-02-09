private
visitGroupingExpr: anGroupingExpr
	"comment stating purpose of message"
	
	|exprs|
	
	exprs := Array
		with: anGroupingExpr expr.

	^ self parenthesize: 'group' exprs: exprs.
	