tests
testvalidsa048xml
	"Source file: xmltest/valid/sa/048.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa048xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa048xml
						documentURI: 'valid/sa/048.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout048xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions