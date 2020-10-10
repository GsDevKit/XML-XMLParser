tests
testp24pass1xml
	"Source file: oasis/p24pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp24pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep24pass1xml
				documentURI: 'p24pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions