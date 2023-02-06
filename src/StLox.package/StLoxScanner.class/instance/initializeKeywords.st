initialize-release
initializeKeywords
	"Init keyword dictionary"

	keywords := Dictionary new.
	
	keywords 
		at: 'and' 	put: StLoxTokenType and;
		at: 'class' 	put: StLoxTokenType stLoxClass;
		at: 'else' 	put: StLoxTokenType else;
		at: 'false' 	put: StLoxTokenType false;
		at: 'for' 	put: StLoxTokenType for;
		at: 'fun' 	put: StLoxTokenType fun;
		at: 'if' 		put: StLoxTokenType if;
		at: 'nil' 		put: StLoxTokenType nil;
		at: 'or'		put: StLoxTokenType or;
		at: 'print' 	put: StLoxTokenType print;
		at: 'return' 	put: StLoxTokenType return;
		at: 'super' 	put: StLoxTokenType super;
		at: 'this' 	put: StLoxTokenType this;
		at: 'true' 	put: StLoxTokenType true;
		at: 'var' 	put: StLoxTokenType var;
		at: 'while' 	put: StLoxTokenType while.
