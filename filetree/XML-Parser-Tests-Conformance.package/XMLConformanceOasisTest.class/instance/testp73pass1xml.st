tests
testp73pass1xml
	"Source file: oasis/p73pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp73pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep73pass1xml
				documentURI: 'p73pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions