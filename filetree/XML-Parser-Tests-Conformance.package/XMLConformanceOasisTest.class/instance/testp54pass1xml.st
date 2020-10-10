tests
testp54pass1xml
	"Source file: oasis/p54pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp54pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep54pass1xml
				documentURI: 'p54pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions