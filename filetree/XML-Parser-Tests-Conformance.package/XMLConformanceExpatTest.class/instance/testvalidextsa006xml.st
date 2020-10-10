tests
testvalidextsa006xml
	"Source file: xmltest/valid/ext-sa/006.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa006xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa006xml
						documentURI: 'valid/ext-sa/006.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout006xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions