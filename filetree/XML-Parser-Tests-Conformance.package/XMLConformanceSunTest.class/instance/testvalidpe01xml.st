tests
testvalidpe01xml
	"Source file: sun/valid/pe01.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidpe01xml.
	self
		shouldnt: [
			[self
				parse: self class sourcevalidpe01xml
				documentURI: 'valid/pe01.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions