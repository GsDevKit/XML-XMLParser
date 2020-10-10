tests
testvalidextsa005xml
	"Source file: xmltest/valid/ext-sa/005.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa005xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa005xml
						documentURI: 'valid/ext-sa/005.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout005xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions