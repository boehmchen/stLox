initialize-release
initializeKeywords
	"Init keyword dictionary"

	keywords := Dictionary new.
	
	keywords 
		at: 'and' 	put: TokenType and;
		at: 'class' 	put: TokenType stLoxClass;
		at: 'else' 	put: TokenType else;
		at: 'false' 	put: TokenType false;
		at: 'for' 	put: TokenType for;
		at: 'fun' 	put: TokenType fun;
		at: 'if' 		put: TokenType if;
		at: 'nil' 		put: TokenType nil;
		at: 'or'		put: TokenType or;
		at: 'print' 	put: TokenType print;
		at: 'return' 	put: TokenType return;
		at: 'super' 	put: TokenType super;
		at: 'this' 	put: TokenType this;
		at: 'true' 	put: TokenType true;
		at: 'var' 	put: TokenType var;
		at: 'while' 	put: TokenType while.
