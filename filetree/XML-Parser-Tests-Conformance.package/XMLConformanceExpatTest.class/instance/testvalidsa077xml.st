tests
testvalidsa077xml
	"Source file: xmltest/valid/sa/077.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa077xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa077xml
						documentURI: 'valid/sa/077.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout077xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions