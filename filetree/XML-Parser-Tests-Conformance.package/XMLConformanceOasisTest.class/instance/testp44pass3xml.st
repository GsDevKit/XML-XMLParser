tests
testp44pass3xml
	"Source file: oasis/p44pass3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp44pass3xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep44pass3xml
				documentURI: 'p44pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions