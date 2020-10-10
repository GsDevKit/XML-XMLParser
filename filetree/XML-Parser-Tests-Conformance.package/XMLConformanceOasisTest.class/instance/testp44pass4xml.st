tests
testp44pass4xml
	"Source file: oasis/p44pass4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp44pass4xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass4xml
				documentURI: 'p44pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions