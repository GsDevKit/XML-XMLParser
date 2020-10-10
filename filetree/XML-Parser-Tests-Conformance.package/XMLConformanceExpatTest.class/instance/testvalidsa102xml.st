tests
testvalidsa102xml
	"Source file: xmltest/valid/sa/102.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa102xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa102xml
						documentURI: 'valid/sa/102.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout102xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions