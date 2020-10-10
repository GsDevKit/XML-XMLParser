tests
testp22pass4xml
	"Source file: oasis/p22pass4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp22pass4xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep22pass4xml
				documentURI: 'p22pass4.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions