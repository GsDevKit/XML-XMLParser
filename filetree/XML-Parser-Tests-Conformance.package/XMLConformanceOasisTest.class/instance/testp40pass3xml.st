tests
testp40pass3xml
	"Source file: oasis/p40pass3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp40pass3xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep40pass3xml
				documentURI: 'p40pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions