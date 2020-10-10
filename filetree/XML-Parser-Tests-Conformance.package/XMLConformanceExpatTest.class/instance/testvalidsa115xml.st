tests
testvalidsa115xml
	"Source file: xmltest/valid/sa/115.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa115xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa115xml
						documentURI: 'valid/sa/115.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout115xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions