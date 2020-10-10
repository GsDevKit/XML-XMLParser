tests
testvalidsa068xml
	"Source file: xmltest/valid/sa/068.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa068xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa068xml
						documentURI: 'valid/sa/068.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout068xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions