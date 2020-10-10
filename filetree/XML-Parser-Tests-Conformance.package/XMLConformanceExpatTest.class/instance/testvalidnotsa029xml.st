tests
testvalidnotsa029xml
	"Source file: xmltest/valid/not-sa/029.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa029xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa029xml
						documentURI: 'valid/not-sa/029.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout029xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions