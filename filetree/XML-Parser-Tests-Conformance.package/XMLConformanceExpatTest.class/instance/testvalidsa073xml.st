tests
testvalidsa073xml
	"Source file: xmltest/valid/sa/073.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa073xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa073xml
						documentURI: 'valid/sa/073.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout073xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions