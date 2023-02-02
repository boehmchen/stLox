as yet unclassified
runFile: aFilePath
	"Runs a lox script under the given path"
	| entireFile |
	
	entireFile := FileStream fileNamed: aFilePath contentsOfEntireFile.
	^ self new run: entireFile
	
	