tests
testp49pass1xml
	"Source file: oasis/p49pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp49pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep49pass1xml
				documentURI: 'p49pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions