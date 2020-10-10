tests
testvalidsa114xml
	"Source file: xmltest/valid/sa/114.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa114xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa114xml
						documentURI: 'valid/sa/114.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout114xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions