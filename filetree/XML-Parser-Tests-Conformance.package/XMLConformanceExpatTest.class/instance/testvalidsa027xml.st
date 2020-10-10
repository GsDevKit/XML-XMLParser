tests
testvalidsa027xml
	"Source file: xmltest/valid/sa/027.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa027xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa027xml
						documentURI: 'valid/sa/027.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout027xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions