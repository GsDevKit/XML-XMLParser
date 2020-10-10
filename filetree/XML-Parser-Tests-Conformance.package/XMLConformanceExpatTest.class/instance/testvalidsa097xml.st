tests
testvalidsa097xml
	"Source file: xmltest/valid/sa/097.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa097xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa097xml
						documentURI: 'valid/sa/097.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout097xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions