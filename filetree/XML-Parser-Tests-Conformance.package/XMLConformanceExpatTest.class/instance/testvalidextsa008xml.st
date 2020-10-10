tests
testvalidextsa008xml
	"Source file: xmltest/valid/ext-sa/008.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa008xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa008xml
						documentURI: 'valid/ext-sa/008.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout008xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions