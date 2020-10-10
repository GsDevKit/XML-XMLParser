tests
testp06pass1xml
	"Source file: oasis/p06pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp06pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep06pass1xml
				documentURI: 'p06pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions