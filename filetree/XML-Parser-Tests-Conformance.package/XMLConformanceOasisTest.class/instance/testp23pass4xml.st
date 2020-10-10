tests
testp23pass4xml
	"Source file: oasis/p23pass4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp23pass4xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep23pass4xml
				documentURI: 'p23pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions