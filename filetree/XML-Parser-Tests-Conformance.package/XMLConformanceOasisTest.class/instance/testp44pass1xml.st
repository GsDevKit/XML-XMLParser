tests
testp44pass1xml
	"Source file: oasis/p44pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp44pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass1xml
				documentURI: 'p44pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions