tests
testvalidextsa002xml
	"Source file: xmltest/valid/ext-sa/002.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa002xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa002xml
						documentURI: 'valid/ext-sa/002.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout002xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions