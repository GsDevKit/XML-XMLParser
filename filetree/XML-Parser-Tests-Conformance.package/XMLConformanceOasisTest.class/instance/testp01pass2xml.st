tests
testp01pass2xml
	"Source file: oasis/p01pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp01pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep01pass2xml
				documentURI: 'p01pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions