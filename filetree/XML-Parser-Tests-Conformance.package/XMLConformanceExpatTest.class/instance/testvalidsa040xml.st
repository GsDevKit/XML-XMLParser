tests
testvalidsa040xml
	"Source file: xmltest/valid/sa/040.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidsa040xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidsa040xml
						documentURI: 'valid/sa/040.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidsaout040xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions