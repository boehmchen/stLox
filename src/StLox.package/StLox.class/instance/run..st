as yet unclassified
run: aSource
	"Run the interpreter over the source"
	| scanner tokens |
	scanner := StLoxScanner new.
	tokens := scanner scanTokens.
	
	tokens do: [ :token | Transcript show: token; cr  ]
