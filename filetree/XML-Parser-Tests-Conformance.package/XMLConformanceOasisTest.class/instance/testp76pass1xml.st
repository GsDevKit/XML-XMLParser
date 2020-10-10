tests
testp76pass1xml
	"Source file: oasis/p76pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp76pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep76pass1xml
				documentURI: 'p76pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions