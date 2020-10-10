tests
testvalidsa009xml
	"Source file: xmltest/valid/sa/009.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa009xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa009xml
						documentURI: 'valid/sa/009.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout009xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions