tests
testp40pass2xml
	"Source file: oasis/p40pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp40pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep40pass2xml
				documentURI: 'p40pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions