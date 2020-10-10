tests
testvalidsa112xml
	"Source file: xmltest/valid/sa/112.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa112xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa112xml
						documentURI: 'valid/sa/112.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout112xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions