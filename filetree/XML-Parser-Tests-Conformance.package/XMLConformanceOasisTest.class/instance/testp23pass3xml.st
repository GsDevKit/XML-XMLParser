tests
testp23pass3xml
	"Source file: oasis/p23pass3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp23pass3xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep23pass3xml
				documentURI: 'p23pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions