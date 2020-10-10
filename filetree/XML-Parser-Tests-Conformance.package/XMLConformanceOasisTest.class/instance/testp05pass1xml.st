tests
testp05pass1xml
	"Source file: oasis/p05pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp05pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep05pass1xml
				documentURI: 'p05pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions