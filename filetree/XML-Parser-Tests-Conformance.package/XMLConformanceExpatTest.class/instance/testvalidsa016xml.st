tests
testvalidsa016xml
	"Source file: xmltest/valid/sa/016.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa016xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa016xml
						documentURI: 'valid/sa/016.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout016xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions