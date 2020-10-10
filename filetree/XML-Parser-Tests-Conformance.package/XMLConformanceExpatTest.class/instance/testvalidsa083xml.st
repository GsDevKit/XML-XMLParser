tests
testvalidsa083xml
	"Source file: xmltest/valid/sa/083.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa083xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa083xml
						documentURI: 'valid/sa/083.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout083xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions