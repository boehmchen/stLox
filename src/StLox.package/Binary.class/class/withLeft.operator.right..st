as yet unclassified
withLeft: leftExpr operator: token right: rightExpr
	"comment stating purpose of message"
	^ Binary new
		left: leftExpr;
		operator: token;
		right: rightExpr.