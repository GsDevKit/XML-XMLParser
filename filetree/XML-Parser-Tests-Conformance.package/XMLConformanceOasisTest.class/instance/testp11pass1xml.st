tests
testp11pass1xml
	"Source file: oasis/p11pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp11pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep11pass1xml
				documentURI: 'p11pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions