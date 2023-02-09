private
scanToken
	|c switch|
	
	c := self advance.
	
	switch := Dictionary new.

	"Simple lexeme"
	switch at: $( put: [self addToken: TokenType leftParen].
	switch at: $) put: [self addToken: TokenType rightParen].
	switch at: ${ put: [self addToken: TokenType leftBrace].
	switch at: $} put: [self addToken: TokenType rightParen].
	switch at: $, put: [self addToken: TokenType comma].
	switch at: $. put: [self addToken: TokenType dot].
	switch at: $- put: [self addToken: TokenType minus].
	switch at: $+ put: [self addToken: TokenType plus].
	switch at: $; put: [self addToken: TokenType semicolon].
	switch at: $* put: [self addToken: TokenType star].
	"/ needs a special treatment because of comments"
	
	"Operators"
	switch at: $! put: [self addToken: (
		self match: $= 
			IfTrue: TokenType bangEqual 
			IfFalse: TokenType bang)].
		
	switch at: $= put: [self addToken: (
		(self match: $=)
			ifTrue: TokenType equalEqual 
			ifFalse: TokenType equal)].
		
	switch at: $< put: [self addToken: (
		(self match: $=)
			ifTrue: TokenType lessEqual 
			ifFalse: TokenType less)].
		
	switch at: $> put: [self addToken: (
		(self match: $=)
			ifTrue: TokenType greaterEqual 
			ifFalse: TokenType greater)].
	
	"Longer Lexemes"
	switch at: $/ put: [
		(self match: $/) 
			"A comment goes until the end of the line"
			ifTrue: [
				((self peek ~= Character cr) 
					and: (self isAtEnd not))
					whileTrue: [self advance]
			]
			ifFalse: [ self addToken: TokenType slash.]
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