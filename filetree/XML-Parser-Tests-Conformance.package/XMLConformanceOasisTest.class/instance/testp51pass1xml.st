tests
testp51pass1xml
	"Source file: oasis/p51pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp51pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep51pass1xml
				documentURI: 'p51pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions