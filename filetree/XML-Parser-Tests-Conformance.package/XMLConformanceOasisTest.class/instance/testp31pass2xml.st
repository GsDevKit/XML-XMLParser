tests
testp31pass2xml
	"Source file: oasis/p31pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp31pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep31pass2xml
				documentURI: 'p31pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions