tests
testvalidsa029xml
	"Source file: xmltest/valid/sa/029.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa029xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa029xml
						documentURI: 'valid/sa/029.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout029xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions