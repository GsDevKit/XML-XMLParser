tests
testp39pass2xml
	"Source file: oasis/p39pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp39pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep39pass2xml
				documentURI: 'p39pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions