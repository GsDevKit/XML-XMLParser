tests
testvalidsa113xml
	"Source file: xmltest/valid/sa/113.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa113xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa113xml
						documentURI: 'valid/sa/113.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout113xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions