tests
testvalidsa015xml
	"Source file: xmltest/valid/sa/015.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa015xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa015xml
						documentURI: 'valid/sa/015.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout015xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions