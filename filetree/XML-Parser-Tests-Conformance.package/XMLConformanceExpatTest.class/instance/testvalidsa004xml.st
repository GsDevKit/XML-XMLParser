tests
testvalidsa004xml
	"Source file: xmltest/valid/sa/004.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa004xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa004xml
						documentURI: 'valid/sa/004.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout004xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions