tests
testvalidextsa004xml
	"Source file: xmltest/valid/ext-sa/004.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa004xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa004xml
						documentURI: 'valid/ext-sa/004.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout004xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions