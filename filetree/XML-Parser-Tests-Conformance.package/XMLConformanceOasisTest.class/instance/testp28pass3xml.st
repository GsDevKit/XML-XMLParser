tests
testp28pass3xml
	"Source file: oasis/p28pass3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp28pass3xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep28pass3xml
				documentURI: 'p28pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions