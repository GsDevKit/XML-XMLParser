tests
testp07pass1xml
	"Source file: oasis/p07pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp07pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep07pass1xml
				documentURI: 'p07pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions