tests
testvalidsa088xml
	"Source file: xmltest/valid/sa/088.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa088xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa088xml
						documentURI: 'valid/sa/088.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout088xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions