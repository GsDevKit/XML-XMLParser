tests
testp28pass1xml
	"Source file: oasis/p28pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp28pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep28pass1xml
				documentURI: 'p28pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions