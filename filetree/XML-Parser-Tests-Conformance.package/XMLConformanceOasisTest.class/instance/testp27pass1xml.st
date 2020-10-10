tests
testp27pass1xml
	"Source file: oasis/p27pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp27pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep27pass1xml
				documentURI: 'p27pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions