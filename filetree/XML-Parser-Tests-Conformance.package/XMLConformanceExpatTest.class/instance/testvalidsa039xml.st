tests
testvalidsa039xml
	"Source file: xmltest/valid/sa/039.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa039xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa039xml
						documentURI: 'valid/sa/039.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout039xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions