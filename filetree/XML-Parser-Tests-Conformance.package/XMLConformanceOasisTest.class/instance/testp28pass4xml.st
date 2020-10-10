tests
testp28pass4xml
	"Source file: oasis/p28pass4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp28pass4xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep28pass4xml
				documentURI: 'p28pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions