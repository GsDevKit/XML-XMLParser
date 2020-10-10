tests
testvalidsa064xml
	"Source file: xmltest/valid/sa/064.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa064xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa064xml
						documentURI: 'valid/sa/064.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout064xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions