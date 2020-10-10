tests
testvalidextsa013xml
	"Source file: xmltest/valid/ext-sa/013.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa013xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa013xml
						documentURI: 'valid/ext-sa/013.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout013xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions