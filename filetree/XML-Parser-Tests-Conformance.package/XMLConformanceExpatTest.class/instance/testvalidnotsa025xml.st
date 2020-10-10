tests
testvalidnotsa025xml
	"Source file: xmltest/valid/not-sa/025.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testvalidnotsa025xml.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class sourcevalidnotsa025xml
						documentURI: 'valid/not-sa/025.xml'.
				self
					assertDocument: document 
					canonicallyEquals: self class sourcevalidnotsaout025xml]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions