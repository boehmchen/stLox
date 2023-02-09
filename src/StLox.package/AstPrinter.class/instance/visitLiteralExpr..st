private
visitLiteralExpr: aLiteralExpr
	"comment stating purpose of message"
	aLiteralExpr value ifNil: [^ 'nil'].
	^ aLiteralExpr value asString