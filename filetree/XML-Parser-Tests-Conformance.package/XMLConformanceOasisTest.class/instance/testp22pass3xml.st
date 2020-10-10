tests
testp22pass3xml
	"Source file: oasis/p22pass3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp22pass3xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep22pass3xml
				documentURI: 'p22pass3.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions