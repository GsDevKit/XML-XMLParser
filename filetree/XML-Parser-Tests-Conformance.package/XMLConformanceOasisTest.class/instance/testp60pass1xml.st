tests
testp60pass1xml
	"Source file: oasis/p60pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp60pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep60pass1xml
				documentURI: 'p60pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions