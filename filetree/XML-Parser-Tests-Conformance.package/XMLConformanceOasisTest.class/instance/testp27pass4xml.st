tests
testp27pass4xml
	"Source file: oasis/p27pass4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp27pass4xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep27pass4xml
				documentURI: 'p27pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions