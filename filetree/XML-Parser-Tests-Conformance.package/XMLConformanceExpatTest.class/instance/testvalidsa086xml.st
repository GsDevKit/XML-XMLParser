tests
testvalidsa086xml
	"Source file: xmltest/valid/sa/086.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa086xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa086xml
						documentURI: 'valid/sa/086.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout086xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions