tests
testvalidextsa007xml
	"Source file: xmltest/valid/ext-sa/007.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa007xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa007xml
						documentURI: 'valid/ext-sa/007.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout007xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions