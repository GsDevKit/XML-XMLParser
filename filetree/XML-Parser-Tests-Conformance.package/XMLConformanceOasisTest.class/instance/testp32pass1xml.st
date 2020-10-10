tests
testp32pass1xml
	"Source file: oasis/p32pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp32pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep32pass1xml
				documentURI: 'p32pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions