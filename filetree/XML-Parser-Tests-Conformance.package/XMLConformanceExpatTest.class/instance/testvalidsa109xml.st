tests
testvalidsa109xml
	"Source file: xmltest/valid/sa/109.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa109xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa109xml
						documentURI: 'valid/sa/109.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout109xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions