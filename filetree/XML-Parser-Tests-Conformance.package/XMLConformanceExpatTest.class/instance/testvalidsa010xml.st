tests
testvalidsa010xml
	"Source file: xmltest/valid/sa/010.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa010xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa010xml
						documentURI: 'valid/sa/010.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout010xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions