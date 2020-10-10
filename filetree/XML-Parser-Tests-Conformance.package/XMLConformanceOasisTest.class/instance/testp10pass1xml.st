tests
testp10pass1xml
	"Source file: oasis/p10pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp10pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep10pass1xml
				documentURI: 'p10pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions