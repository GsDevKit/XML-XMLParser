tests
testp30pass2xml
	"Source file: oasis/p30pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp30pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep30pass2xml
				documentURI: 'p30pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions