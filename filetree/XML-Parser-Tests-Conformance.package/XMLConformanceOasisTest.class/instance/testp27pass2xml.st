tests
testp27pass2xml
	"Source file: oasis/p27pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp27pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep27pass2xml
				documentURI: 'p27pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions