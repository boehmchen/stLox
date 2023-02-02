logic
scanTokens

	"Iterate over the source string until we reach the end"
	[self isAtEnd ] whileFalse: [
		start := current
		self scanToken].

	"Add EOF Token after reaching the end"
	tokens put: (
		StLoxToken
			withType: StLoxTokenType eof
			lexeme: '' 
			literal: nil
			line: line).
		
