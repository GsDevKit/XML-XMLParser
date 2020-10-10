tests
testvalidsa036xml
	"Source file: xmltest/valid/sa/036.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa036xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa036xml
						documentURI: 'valid/sa/036.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout036xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions