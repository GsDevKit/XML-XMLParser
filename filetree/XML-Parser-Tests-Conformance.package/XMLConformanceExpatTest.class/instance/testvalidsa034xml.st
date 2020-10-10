tests
testvalidsa034xml
	"Source file: xmltest/valid/sa/034.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa034xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa034xml
						documentURI: 'valid/sa/034.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout034xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions