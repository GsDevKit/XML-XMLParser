tests
testvalidsa108xml
	"Source file: xmltest/valid/sa/108.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa108xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa108xml
						documentURI: 'valid/sa/108.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout108xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions