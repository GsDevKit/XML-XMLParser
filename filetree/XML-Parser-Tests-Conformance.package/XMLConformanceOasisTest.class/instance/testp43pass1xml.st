tests
testp43pass1xml
	"Source file: oasis/p43pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp43pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep43pass1xml
				documentURI: 'p43pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions