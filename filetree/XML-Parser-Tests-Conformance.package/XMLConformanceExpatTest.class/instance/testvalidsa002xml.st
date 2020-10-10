tests
testvalidsa002xml
	"Source file: xmltest/valid/sa/002.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa002xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa002xml
						documentURI: 'valid/sa/002.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout002xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions