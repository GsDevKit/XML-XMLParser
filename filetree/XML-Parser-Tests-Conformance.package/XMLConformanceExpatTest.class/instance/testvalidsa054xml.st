tests
testvalidsa054xml
	"Source file: xmltest/valid/sa/054.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa054xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa054xml
						documentURI: 'valid/sa/054.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout054xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions