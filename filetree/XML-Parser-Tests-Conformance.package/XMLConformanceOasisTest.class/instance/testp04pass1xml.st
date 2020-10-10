tests
testp04pass1xml
	"Source file: oasis/p04pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp04pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep04pass1xml
				documentURI: 'p04pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions