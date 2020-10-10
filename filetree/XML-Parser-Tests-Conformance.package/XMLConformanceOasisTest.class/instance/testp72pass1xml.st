tests
testp72pass1xml
	"Source file: oasis/p72pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp72pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep72pass1xml
				documentURI: 'p72pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions