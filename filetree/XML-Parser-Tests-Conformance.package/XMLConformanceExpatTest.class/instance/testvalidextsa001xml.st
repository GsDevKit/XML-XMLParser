tests
testvalidextsa001xml
	"Source file: xmltest/valid/ext-sa/001.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidextsa001xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidextsa001xml
						documentURI: 'valid/ext-sa/001.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidextsaout001xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions