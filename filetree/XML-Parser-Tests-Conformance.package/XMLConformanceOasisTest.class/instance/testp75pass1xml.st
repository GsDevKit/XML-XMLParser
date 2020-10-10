tests
testp75pass1xml
	"Source file: oasis/p75pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp75pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep75pass1xml
				documentURI: 'p75pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions