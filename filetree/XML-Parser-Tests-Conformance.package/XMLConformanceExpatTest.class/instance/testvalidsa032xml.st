tests
testvalidsa032xml
	"Source file: xmltest/valid/sa/032.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa032xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa032xml
						documentURI: 'valid/sa/032.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout032xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions