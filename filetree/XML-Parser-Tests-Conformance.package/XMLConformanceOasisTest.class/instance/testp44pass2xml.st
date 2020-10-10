tests
testp44pass2xml
	"Source file: oasis/p44pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp44pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass2xml
				documentURI: 'p44pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions