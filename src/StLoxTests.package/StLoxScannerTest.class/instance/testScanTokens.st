tests
testScanTokens
	"comment stating purpose of message"
	| variableDeclaration variableDeclarationScanner tokens|
	
	variableDeclaration := 'var language = "lox";'.
	variableDeclarationScanner := StLoxScanner with:  variableDeclaration.
	variableDeclarationScanner scanTokens.
	
	tokens := variableDeclarationScanner tokens.
	
	Transcript show: tokens.
	
	self 
		assert: tokens size == 6.

	