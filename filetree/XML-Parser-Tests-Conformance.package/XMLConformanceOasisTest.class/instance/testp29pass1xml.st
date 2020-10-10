tests
testp29pass1xml
	"Source file: oasis/p29pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp29pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep29pass1xml
				documentURI: 'p29pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions