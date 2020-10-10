tests
testvalidextsa010xml
	"Source file: xmltest/valid/ext-sa/010.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa010xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa010xml
						documentURI: 'valid/ext-sa/010.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout010xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions