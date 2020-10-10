tests
testp14pass1xml
	"Source file: oasis/p14pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp14pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep14pass1xml
				documentURI: 'p14pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions