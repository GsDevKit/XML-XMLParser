tests
testp28pass2xml
	"Source file: oasis/p28pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp28pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep28pass2xml
				documentURI: 'p28pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions