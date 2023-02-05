private
scanToken
	|c switch|
	
	c := self advance.
	
	switch := Dictionary new.
	
	"Simple lexeme"
	switch at: $( put: [self addToken: StLoxTokenType leftParen].
	switch at: $) put: [self addToken: StLoxTokenType rightParen].
	switch at: ${ put: [self addToken: StLoxTokenType leftBrace].
	switch at: $} put: [self addToken: StLoxTokenType rightParen].
	switch at: $, put: [self addToken: StLoxTokenType comma].
	switch at: $. put: [self addToken: StLoxTokenType dot].
	switch at: $- put: [self addToken: StLoxTokenType minus].
	switch at: $+ put: [self addToken: StLoxTokenType plus].
	switch at: $; put: [self addToken: StLoxTokenType semicolon].
	switch at: $* put: [self addToken: StLoxTokenType star].
	"/ needs a special treatment because of comments"
	
	"Operators"
	switch at: $! put: [self addToken: (
		self match: $= 
			IfTrue: StLoxTokenType bangEqual 
			IfFalse: StLoxTokenType bang)].
		
	switch at: $= put: [self addToken: (
		(self match: $=)
			ifTrue: StLoxTokenType equalEqual 
			ifFalse: StLoxTokenType equal)].
		
	switch at: $< put: [self addToken: (
		(self match: $=)
			ifTrue: StLoxTokenType lessEqual 
			ifFalse: StLoxTokenType less)].
		
	switch at: $> put: [self addToken: (
		(self match: $=)
			ifTrue: StLoxTokenType greaterEqual 
			ifFalse: StLoxTokenType greater)].
	
	"Longer Lexemes"
	switch at: $/ put: [
		(self match: $/) 
			"A comment goes until the end of the line"
			ifTrue: [
				((self peek not equal Character cr) 
					and: (self isAtEnd not))
					whileTrue: [self advance]
			]
			ifFalse: [ self addToken: StLoxTokenType slash.]
		].
	
	"Meaningless characters: newlines and whitespace -> ignore it"
	switch at: Character space put: [].
	switch at: Character return put: [].
	switch at: Character tab put: [].
	switch at: Character linefeed put: [
		line := line + 1	
	].
	
	"String literals"
	switch at: $" put: [self string].
	
	(switch includesKey: c)
		ifTrue: [(switch at: c) value.]
		
		"Default path of switch statement"
		ifFalse:  [
			"Numbers"
			
			(self isDigit: c)
				ifTrue: [self number]
				ifFalse: [
					(self isAlpha: c) 
						ifTrue: [self identifier]
						ifFalse: [StLox error: line message: 'Unexpected character.'].
					]
	 	]