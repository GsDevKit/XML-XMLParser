tests
testvalidsa061xml
	"Source file: xmltest/valid/sa/061.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa061xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa061xml
						documentURI: 'valid/sa/061.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout061xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions