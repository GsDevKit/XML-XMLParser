tests
testp16pass3xml
	"Source file: oasis/p16pass3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp16pass3xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep16pass3xml
				documentURI: 'p16pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions