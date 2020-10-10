tests
testp41pass1xml
	"Source file: oasis/p41pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp41pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep41pass1xml
				documentURI: 'p41pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions