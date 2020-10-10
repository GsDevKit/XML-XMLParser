parsing
domParse: aString documentURI: aURIString
	^ (self
		parserClass: self domParserClass
		on: aString
		documentURI: aURIString)
			preservesIgnorableWhitespace: true;
			parseDocument