tests
testp09pass1xml
	"Source file: oasis/p09pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp09pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep09pass1xml
				documentURI: 'p09pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions