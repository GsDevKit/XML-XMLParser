tests
testvalidsa118xml
	"Source file: xmltest/valid/sa/118.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa118xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa118xml
						documentURI: 'valid/sa/118.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout118xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions