tests
testvalidextsa014xml
	"Source file: xmltest/valid/ext-sa/014.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa014xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa014xml
						documentURI: 'valid/ext-sa/014.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout014xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions