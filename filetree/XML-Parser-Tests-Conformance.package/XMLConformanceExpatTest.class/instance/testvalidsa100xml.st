tests
testvalidsa100xml
	"Source file: xmltest/valid/sa/100.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa100xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa100xml
						documentURI: 'valid/sa/100.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout100xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions