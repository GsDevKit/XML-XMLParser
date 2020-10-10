tests
testvalidsa006xml
	"Source file: xmltest/valid/sa/006.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa006xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa006xml
						documentURI: 'valid/sa/006.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout006xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions