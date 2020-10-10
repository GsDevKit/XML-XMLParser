tests
testp28pass5xml
	"Source file: oasis/p28pass5.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp28pass5xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep28pass5xml
				documentURI: 'p28pass5.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions