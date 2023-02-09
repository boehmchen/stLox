private
parenthesize: aTokenLiteral exprs: anExprArray

	| tmp |
	
	tmp := '(', aTokenLiteral. 
	
	anExprArray do: [:aExpr | 
		|child |
		child := aExpr accept: self. 
		tmp := tmp, ' ' ,  child].
	tmp := tmp, ')'.

	^ tmp
	
	