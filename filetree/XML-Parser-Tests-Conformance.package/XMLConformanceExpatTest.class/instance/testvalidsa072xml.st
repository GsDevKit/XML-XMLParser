tests
testvalidsa072xml
	"Source file: xmltest/valid/sa/072.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa072xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa072xml
						documentURI: 'valid/sa/072.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout072xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions