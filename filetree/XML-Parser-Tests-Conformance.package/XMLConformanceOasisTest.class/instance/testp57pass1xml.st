tests
testp57pass1xml
	"Source file: oasis/p57pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp57pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep57pass1xml
				documentURI: 'p57pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions