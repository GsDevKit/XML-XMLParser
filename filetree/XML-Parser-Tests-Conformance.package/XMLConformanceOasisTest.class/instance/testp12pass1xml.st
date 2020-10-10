tests
testp12pass1xml
	"Source file: oasis/p12pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp12pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep12pass1xml
				documentURI: 'p12pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions