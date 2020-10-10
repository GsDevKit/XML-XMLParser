tests
testvalidextsa003xml
	"Source file: xmltest/valid/ext-sa/003.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa003xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa003xml
						documentURI: 'valid/ext-sa/003.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout003xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions