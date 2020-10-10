tests
testvalidnotsa006xml
	"Source file: xmltest/valid/not-sa/006.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa006xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa006xml
						documentURI: 'valid/not-sa/006.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout006xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions