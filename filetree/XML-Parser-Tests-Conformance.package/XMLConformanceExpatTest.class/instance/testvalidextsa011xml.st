tests
testvalidextsa011xml
	"Source file: xmltest/valid/ext-sa/011.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa011xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa011xml
						documentURI: 'valid/ext-sa/011.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout011xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions