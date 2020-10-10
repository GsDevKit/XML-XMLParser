tests
testvalidsa065xml
	"Source file: xmltest/valid/sa/065.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa065xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa065xml
						documentURI: 'valid/sa/065.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout065xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions