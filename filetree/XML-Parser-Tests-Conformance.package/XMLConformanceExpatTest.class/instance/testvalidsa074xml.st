tests
testvalidsa074xml
	"Source file: xmltest/valid/sa/074.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa074xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa074xml
						documentURI: 'valid/sa/074.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout074xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions