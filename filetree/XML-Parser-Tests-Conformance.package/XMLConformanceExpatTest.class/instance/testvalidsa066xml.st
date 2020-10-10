tests
testvalidsa066xml
	"Source file: xmltest/valid/sa/066.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa066xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa066xml
						documentURI: 'valid/sa/066.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout066xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions