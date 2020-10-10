tests
testvalidextsa009xml
	"Source file: xmltest/valid/ext-sa/009.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa009xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa009xml
						documentURI: 'valid/ext-sa/009.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout009xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions