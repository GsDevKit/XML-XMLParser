tests
testp64pass1xml
	"Source file: oasis/p64pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp64pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep64pass1xml
				documentURI: 'p64pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions