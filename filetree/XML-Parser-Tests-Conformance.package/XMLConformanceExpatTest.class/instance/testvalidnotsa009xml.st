tests
testvalidnotsa009xml
	"Source file: xmltest/valid/not-sa/009.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa009xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa009xml
						documentURI: 'valid/not-sa/009.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout009xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions