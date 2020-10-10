tests
testvalidsa020xml
	"Source file: xmltest/valid/sa/020.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa020xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa020xml
						documentURI: 'valid/sa/020.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout020xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions