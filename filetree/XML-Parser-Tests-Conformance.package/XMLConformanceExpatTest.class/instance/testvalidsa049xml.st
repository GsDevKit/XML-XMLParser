tests
testvalidsa049xml
	"Source file: xmltest/valid/sa/049.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa049xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa049xml
						documentURI: 'valid/sa/049.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout049xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions