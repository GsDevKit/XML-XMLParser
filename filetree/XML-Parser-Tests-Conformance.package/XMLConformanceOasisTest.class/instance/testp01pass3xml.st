tests
testp01pass3xml
	"Source file: oasis/p01pass3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp01pass3xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep01pass3xml
				documentURI: 'p01pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions