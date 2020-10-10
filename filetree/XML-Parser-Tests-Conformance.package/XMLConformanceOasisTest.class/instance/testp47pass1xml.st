tests
testp47pass1xml
	"Source file: oasis/p47pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp47pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep47pass1xml
				documentURI: 'p47pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions