tests
testvalidsa025xml
	"Source file: xmltest/valid/sa/025.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa025xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa025xml
						documentURI: 'valid/sa/025.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout025xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions