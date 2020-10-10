tests
testp71pass1xml
	"Source file: oasis/p71pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp71pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep71pass1xml
				documentURI: 'p71pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions