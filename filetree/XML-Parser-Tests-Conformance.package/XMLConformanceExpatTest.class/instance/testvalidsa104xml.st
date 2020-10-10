tests
testvalidsa104xml
	"Source file: xmltest/valid/sa/104.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa104xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa104xml
						documentURI: 'valid/sa/104.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout104xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions