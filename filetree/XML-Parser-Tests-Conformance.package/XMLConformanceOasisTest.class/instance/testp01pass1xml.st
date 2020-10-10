tests
testp01pass1xml
	"Source file: oasis/p01pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp01pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep01pass1xml
				documentURI: 'p01pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions