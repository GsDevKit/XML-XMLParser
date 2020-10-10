tests
testp44pass5xml
	"Source file: oasis/p44pass5.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp44pass5xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass5xml
				documentURI: 'p44pass5.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions