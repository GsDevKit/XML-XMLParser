tests
testvalidsa110xml
	"Source file: xmltest/valid/sa/110.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa110xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa110xml
						documentURI: 'valid/sa/110.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout110xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions