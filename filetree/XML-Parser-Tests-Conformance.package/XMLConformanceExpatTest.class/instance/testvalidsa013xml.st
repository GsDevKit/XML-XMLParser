tests
testvalidsa013xml
	"Source file: xmltest/valid/sa/013.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa013xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa013xml
						documentURI: 'valid/sa/013.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout013xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions