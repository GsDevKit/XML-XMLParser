tests
testp42pass2xml
	"Source file: oasis/p42pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp42pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep42pass2xml
				documentURI: 'p42pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions