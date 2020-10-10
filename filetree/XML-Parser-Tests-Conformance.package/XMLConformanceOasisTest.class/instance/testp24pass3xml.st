tests
testp24pass3xml
	"Source file: oasis/p24pass3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp24pass3xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep24pass3xml
				documentURI: 'p24pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions