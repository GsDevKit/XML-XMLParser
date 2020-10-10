tests
testvalidsa043xml
	"Source file: xmltest/valid/sa/043.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa043xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa043xml
						documentURI: 'valid/sa/043.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout043xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions