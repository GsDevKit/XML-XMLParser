tests
testp63pass1xml
	"Source file: oasis/p63pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp63pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep63pass1xml
				documentURI: 'p63pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions