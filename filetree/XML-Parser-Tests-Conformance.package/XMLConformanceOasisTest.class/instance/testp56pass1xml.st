tests
testp56pass1xml
	"Source file: oasis/p56pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp56pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep56pass1xml
				documentURI: 'p56pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions