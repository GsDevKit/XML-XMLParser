tests
testp22pass1xml
	"Source file: oasis/p22pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp22pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep22pass1xml
				documentURI: 'p22pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions