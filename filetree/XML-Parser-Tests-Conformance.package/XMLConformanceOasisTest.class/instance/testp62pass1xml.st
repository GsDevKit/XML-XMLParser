tests
testp62pass1xml
	"Source file: oasis/p62pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp62pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep62pass1xml
				documentURI: 'p62pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions