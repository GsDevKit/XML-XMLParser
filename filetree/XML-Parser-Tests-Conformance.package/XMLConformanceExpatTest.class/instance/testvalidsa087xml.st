tests
testvalidsa087xml
	"Source file: xmltest/valid/sa/087.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa087xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa087xml
						documentURI: 'valid/sa/087.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout087xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions