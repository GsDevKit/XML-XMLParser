tests
testvalidsa092xml
	"Source file: xmltest/valid/sa/092.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa092xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa092xml
						documentURI: 'valid/sa/092.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout092xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions