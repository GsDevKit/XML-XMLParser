tests
testp41pass2xml
	"Source file: oasis/p41pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp41pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep41pass2xml
				documentURI: 'p41pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions