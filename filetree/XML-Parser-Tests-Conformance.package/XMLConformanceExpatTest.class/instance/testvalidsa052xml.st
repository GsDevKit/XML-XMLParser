tests
testvalidsa052xml
	"Source file: xmltest/valid/sa/052.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa052xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa052xml
						documentURI: 'valid/sa/052.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout052xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions