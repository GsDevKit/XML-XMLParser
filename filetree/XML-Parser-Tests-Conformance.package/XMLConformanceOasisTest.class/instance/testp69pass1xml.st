tests
testp69pass1xml
	"Source file: oasis/p69pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp69pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep69pass1xml
				documentURI: 'p69pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions