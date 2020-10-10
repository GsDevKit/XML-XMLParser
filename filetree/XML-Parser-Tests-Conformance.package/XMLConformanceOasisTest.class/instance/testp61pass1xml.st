tests
testp61pass1xml
	"Source file: oasis/p61pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp61pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep61pass1xml
				documentURI: 'p61pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions