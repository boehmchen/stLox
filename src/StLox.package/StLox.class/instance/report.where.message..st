as yet unclassified
report: aLineNumber where: aWhereDescription message: aMessage
	"comment stating purpose of message"
	Transcript show:
		'[line ', aLineNumber, '"] Error', aWhereDescription, ': ' + aMessage; cr.
		
	hadError := true
