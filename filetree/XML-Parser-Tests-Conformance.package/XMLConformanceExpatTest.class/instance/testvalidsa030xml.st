tests
testvalidsa030xml
	"Source file: xmltest/valid/sa/030.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa030xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa030xml
						documentURI: 'valid/sa/030.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout030xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions