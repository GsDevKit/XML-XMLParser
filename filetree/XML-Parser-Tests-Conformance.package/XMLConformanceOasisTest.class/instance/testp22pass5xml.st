tests
testp22pass5xml
	"Source file: oasis/p22pass5.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp22pass5xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep22pass5xml
				documentURI: 'p22pass5.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions