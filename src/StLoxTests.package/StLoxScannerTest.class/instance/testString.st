tests
testString
	"comment stating purpose of message"
	| testString |
	
	testString := [:aString | |scanner|
		scanner := StLoxScanner with: aString.
		
		scanner advance. "Scan first character"

		scanner string.
		scanner tokens size 
	].
	
	self assert: (testString value: '"Hello"') == 1. 