tests
testp27pass3xml
	"Source file: oasis/p27pass3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp27pass3xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep27pass3xml
				documentURI: 'p27pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions