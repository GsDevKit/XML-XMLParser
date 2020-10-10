tests
testp58pass1xml
	"Source file: oasis/p58pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp58pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep58pass1xml
				documentURI: 'p58pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions