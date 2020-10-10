tests
testp31pass1xml
	"Source file: oasis/p31pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp31pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep31pass1xml
				documentURI: 'p31pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions