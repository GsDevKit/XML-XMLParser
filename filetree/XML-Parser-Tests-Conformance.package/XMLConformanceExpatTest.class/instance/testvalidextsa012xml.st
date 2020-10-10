tests
testvalidextsa012xml
	"Source file: xmltest/valid/ext-sa/012.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa012xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa012xml
						documentURI: 'valid/ext-sa/012.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout012xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions