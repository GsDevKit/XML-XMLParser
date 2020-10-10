tests
testp40pass1xml
	"Source file: oasis/p40pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp40pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep40pass1xml
				documentURI: 'p40pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions