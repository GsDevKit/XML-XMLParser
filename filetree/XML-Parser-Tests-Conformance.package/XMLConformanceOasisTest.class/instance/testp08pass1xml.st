tests
testp08pass1xml
	"Source file: oasis/p08pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp08pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep08pass1xml
				documentURI: 'p08pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions