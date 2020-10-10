parsing
parse: aString documentURI: aURIString
	^ (self
		parserClass: self domParserClass
		on: aString
		documentURI: aURIString)
			parseDocument