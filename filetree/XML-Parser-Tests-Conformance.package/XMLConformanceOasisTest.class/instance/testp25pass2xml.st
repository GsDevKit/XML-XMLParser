tests
testp25pass2xml
	"Source file: oasis/p25pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp25pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep25pass2xml
				documentURI: 'p25pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions