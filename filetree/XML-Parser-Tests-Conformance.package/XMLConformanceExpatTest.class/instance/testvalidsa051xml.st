tests
testvalidsa051xml
	"Source file: xmltest/valid/sa/051.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa051xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa051xml
						documentURI: 'valid/sa/051.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout051xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions